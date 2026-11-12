# HEDGIE 4.0

## Changelog

- update situations titles and texts,
- add new situations
- add hedgie specific bold style (hedgie-b)
- simplify minigame scoring: apply stats only on completion

## Minijáték pontozása

A helyes és helytelen párosítások nem módosítják azonnal a statokat; a játék megszámolja a helytelen párosítási kísérleteket. A minijáték sikeres befejezésekor az energia 2-vel csökken, az együttműködés 2-vel nő, a felkészültség pedig `max(6 - helytelen kísérletek száma, 0)` értékkel nő. Hat vagy több hiba esetén a felkészültség nem változik. A szokásos 0–100-as statkorlátok érvényesek.

## Adatbázisfrissítés

A játék megfelelő működéséhez a következő scripteket kell futtatni:

1. [`update_situations_texts.sql`](update_situations_texts.sql)
2. [`update_minigame_scoring.sql`](update_minigame_scoring.sql): A `methodology_alignments` tábla összes helyes és helytelen deltaértékének nullázása, az oszlopok megtartásával. Az aktuális pontszámítást a kód végzi.
3. [`add-choice-tooltip-text.sql`](add-choice-tooltip-text.sql): a választási lehetőségek opcionális, tooltipben megjeleníthető mezőt kapnak. Egyelőre csak a mikrojáték előtti opciók során használjuk.

## Deployment hozzávalói

* Projektcsomag: *(hamarosan)*
* Compose fájl: [`compose.yaml`](../Game/compose.yaml)

## Teljes adatbázis migráció aktuális sorrendje:
  Database/SQL/01_schema.sql \
  Database/SQL/02_data-situations.sql \
  Database/SQL/03_data-choices.sql \
  Database/SQL/04_constraints.sql \
  Database/SQL/update-01.sql \
  Database/SQL/update-02.sql \
  "2.0 Release/update-illustrations.sql" \
  "2.0 Release/fix-gameplay-logic.sql" \
  "2.0 Release/add-links.sql" \
  "3.0 Release/add-minigame.sql" \
  "3.0 Release/add-new-methodology-choice.sql" \
  "3.0 Release/misc_text_fixes.sql" \
  "3.0 Release/typo_fixes.sql" \
  "3.1 Release/update_choice_126_next_situation.sql" \
  "4.0 Release/update_situations_texts.sql" \
  "4.0 Release/update_minigame_scoring.sql" \
  "4.0 Release/add-choice-tooltip-text.sql"