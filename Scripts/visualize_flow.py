#!/usr/bin/env python3
"""Visualise the HEDGIE situation/choice flow as a Mermaid or Graphviz diagram."""

from __future__ import annotations

import argparse
import os
import re
import sys

import psycopg2

SITUATION_TYPE_NAMES = {
    1: "Info",
    2: "Conversation",
    3: "Decision",
    4: "Minigame",
    5: "Special",
}

SITUATION_TYPE_COLORS = {
    1: "#ADD8E6",  # Info - light blue
    2: "#90EE90",  # Conversation - green
    3: "#FFA500",  # Decision - orange
    4: "#D8BFD8",  # Minigame - purple
    5: "#F08080",  # Special - red
}


def parse_connection_string(conn_str: str) -> dict:
    """Parse a semi-colon separated Npgsql-style connection string."""
    params = {}
    for part in conn_str.split(";"):
        part = part.strip()
        if not part or "=" not in part:
            continue
        key, _, value = part.partition("=")
        params[key.strip().lower()] = value.strip()
    return params


def build_dsn(params: dict) -> str:
    """Build a libpq DSN from parsed parameters."""
    host = params.get("host", params.get("server", "localhost"))
    port = params.get("port", "5432")
    dbname = params.get("database", params.get("dbname", params.get("initial catalog", "")))
    user = params.get("username", params.get("user", params.get("userid", "")))
    password = params.get("password", params.get("pwd", ""))

    if not dbname or not user:
        raise ValueError("Connection string must include Database and Username")

    dsn = f"host={host} port={port} dbname={dbname} user={user}"
    if password:
        dsn += f" password={password}"
    return dsn


def connect():
    """Connect using DATABASE_URL env var or local dev defaults."""
    conn_str = os.environ.get(
        "DATABASE_URL",
        "Host=localhost;Port=5432;Database=hedgie_db;Username=postgres;Password=postgres",
    )
    params = parse_connection_string(conn_str)
    dsn = build_dsn(params)
    return psycopg2.connect(dsn)


def truncate(text: str | None, length: int = 30) -> str:
    """Return a shortened, single-line string for diagram labels."""
    if not text:
        return ""
    text = text.replace("\n", " ").replace("\r", " ")
    text = re.sub(r"\s+", " ", text).strip()
    if len(text) <= length:
        return text
    return text[: length - 1].rstrip() + "…"


def mermaid_escape(text: str) -> str:
    """Escape characters that break Mermaid labels."""
    return text.replace('"', '#quot;').replace("&", "&amp;")


def load_data(cursor):
    cursor.execute(
        """
        SELECT id, title, situation_text, illustration,
               is_starter, is_halftime, is_terminal,
               situation_type, next_situation_id, required_selections
        FROM situations
        ORDER BY id;
        """
    )
    situations = [
        {
            "id": row[0],
            "title": row[1] or "",
            "text": row[2] or "",
            "illustration": row[3],
            "is_starter": row[4] or False,
            "is_halftime": row[5] or False,
            "is_terminal": row[6] or False,
            "type": row[7] or 1,
            "next_situation_id": row[8],
            "required_selections": row[9],
        }
        for row in cursor.fetchall()
    ]

    cursor.execute(
        """
        SELECT id, situation_id, choice_text, next_situation_id,
               delta_energy, delta_selfreflection, delta_competency,
               delta_initiative, delta_creativity, delta_cooperation,
               delta_motivation, link
        FROM choices
        ORDER BY id;
        """
    )
    choices = [
        {
            "id": row[0],
            "situation_id": row[1],
            "text": row[2] or "",
            "next_situation_id": row[3],
            "delta_energy": row[4],
            "delta_selfreflection": row[5],
            "delta_competency": row[6],
            "delta_initiative": row[7],
            "delta_creativity": row[8],
            "delta_cooperation": row[9],
            "delta_motivation": row[10],
            "link": row[11],
        }
        for row in cursor.fetchall()
    ]

    return situations, choices


def format_delta(stats: dict) -> str:
    """Format non-zero stat deltas as a compact string."""
    stat_names = [
        ("energy", "E"),
        ("selfreflection", "SR"),
        ("competency", "C"),
        ("initiative", "I"),
        ("creativity", "Cr"),
        ("cooperation", "Co"),
        ("motivation", "M"),
    ]
    parts = []
    for key, short in stat_names:
        value = stats.get(f"delta_{key}")
        if value is not None and value != 0:
            sign = "+" if value > 0 else ""
            parts.append(f"{short}{sign}{value}")
    return ", ".join(parts)


def render_mermaid(situations, choices, include_deltas: bool) -> str:
    """Render a Mermaid flowchart TD diagram."""
    lines = ["flowchart TD"]

    # Render situation nodes
    for s in situations:
        sid = f"S{s['id']}"
        title = truncate(s["title"], 50)
        text = truncate(s["text"], 50)
        type_name = SITUATION_TYPE_NAMES.get(s["type"], f"Type{s['type']}")
        color = SITUATION_TYPE_COLORS.get(s["type"], "#DDDDDD")

        badges = []
        if s["is_starter"]:
            badges.append("START")
        if s["is_halftime"]:
            badges.append("HALF")
        if s["is_terminal"]:
            badges.append("END")

        badge_text = f" [{' | '.join(badges)}]" if badges else ""
        text_display = mermaid_escape(text) if text else "(no text)"
        label = f"{s['id']}: {mermaid_escape(title)}\\n{text_display}{badge_text}"
        lines.append(f'    {sid}["{label}"]')
        lines.append(f"    style {sid} fill:{color},stroke:#333,stroke-width:2px")

    # Render choice nodes and edges
    for c in choices:
        cid = f"C{c['id']}"
        text = truncate(c["text"], 50)
        label = f"{c['id']}: {mermaid_escape(text)}"
        lines.append(f'    {cid}(("{label}"))')
        lines.append(f"    style {cid} fill:#f0f0f0,stroke:#666")

        from_sid = f"S{c['situation_id']}"
        to_sid = f"S{c['next_situation_id']}"
        edge_label = ""
        if include_deltas:
            deltas = format_delta(c)
            if deltas:
                edge_label = f"|{deltas}|"
        lines.append(f"    {from_sid} ---{edge_label} {cid}")
        lines.append(f"    {cid} --> {to_sid}")

    # Render synthetic "Tovább" choice nodes for Info / Minigame auto-advance
    for s in situations:
        if s["type"] in (1, 4) and s["next_situation_id"] is not None:
            synthetic_id = f"C_auto_{s['id']}"
            type_name = SITUATION_TYPE_NAMES.get(s["type"], "Auto")
            label = f"Tovább ({type_name})"
            lines.append(f'    {synthetic_id}(("{label}"))')
            lines.append(f"    style {synthetic_id} fill:#fff,stroke:#999,stroke-dasharray: 5 5")
            lines.append(f"    S{s['id']} --- {synthetic_id}")
            lines.append(f"    {synthetic_id} --> S{s['next_situation_id']}")

    return "\n".join(lines) + "\n"


def render_dot(situations, choices, include_deltas: bool) -> str:
    """Render a Graphviz DOT diagram."""
    lines = ["digraph HedgieFlow {", "    rankdir=TD;", "    node [fontname=Arial];"]

    for s in situations:
        sid = f"S{s['id']}"
        title = truncate(s["title"], 50)
        text = truncate(s["text"], 50)
        type_name = SITUATION_TYPE_NAMES.get(s["type"], f"Type{s['type']}")
        color = SITUATION_TYPE_COLORS.get(s["type"], "#DDDDDD")

        badges = []
        if s["is_starter"]:
            badges.append("START")
        if s["is_halftime"]:
            badges.append("HALF")
        if s["is_terminal"]:
            badges.append("END")

        badge_text = f"\\n[{' | '.join(badges)}]" if badges else ""
        text_display = text if text else "(no text)"
        label = f"{s['id']}: {title}\\n{text_display}{badge_text}"
        shape = "box"
        lines.append(
            f'    {sid} [label="{label}", shape={shape}, style=filled, fillcolor="{color}"];'
        )

    for c in choices:
        cid = f"C{c['id']}"
        text = truncate(c["text"], 50)
        label = f"{c['id']}: {text}"
        lines.append(f'    {cid} [label="{label}", shape=ellipse, style=filled, fillcolor="#f0f0f0"];')

        edge_label = ""
        if include_deltas:
            deltas = format_delta(c)
            if deltas:
                edge_label = f', label="{deltas}"'
        lines.append(f"    S{c['situation_id']} -> {cid} [dir=none];")
        lines.append(f"    {cid} -> S{c['next_situation_id']}{edge_label};")

    for s in situations:
        if s["type"] in (1, 4) and s["next_situation_id"] is not None:
            synthetic_id = f"C_auto_{s['id']}"
            type_name = SITUATION_TYPE_NAMES.get(s["type"], "Auto")
            lines.append(
                f'    {synthetic_id} [label="Tovább ({type_name})", shape=ellipse, style="dashed,filled", fillcolor="#fff"];'
            )
            lines.append(f"    S{s['id']} -> {synthetic_id} [dir=none];")
            lines.append(f"    {synthetic_id} -> S{s['next_situation_id']};")

    lines.append("}")
    return "\n".join(lines) + "\n"


def main():
    parser = argparse.ArgumentParser(
        description="Visualise the HEDGIE situation/choice database graph."
    )
    parser.add_argument(
        "--format",
        choices=["mermaid", "dot"],
        default="mermaid",
        help="Output format (default: mermaid).",
    )
    parser.add_argument(
        "--output",
        "-o",
        default="-",
        help="Output file path (default: stdout).",
    )
    parser.add_argument(
        "--include-deltas",
        action="store_true",
        help="Include stat delta labels on choice edges.",
    )
    args = parser.parse_args()

    conn = connect()
    try:
        with conn.cursor() as cursor:
            situations, choices = load_data(cursor)
    finally:
        conn.close()

    if args.format == "mermaid":
        output = render_mermaid(situations, choices, args.include_deltas)
    else:
        output = render_dot(situations, choices, args.include_deltas)

    if args.output == "-":
        sys.stdout.write(output)
    else:
        with open(args.output, "w", encoding="utf-8") as f:
            f.write(output)
        print(f"Diagram written to {args.output}", file=sys.stderr)


if __name__ == "__main__":
    main()
