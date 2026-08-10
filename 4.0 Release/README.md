# HEDGIE 4.0

## Changelog

- update situations titles and texts,
- add new situations
- add hedgie specific bold style (hedgie-b)

## Adatbázisfrissítés

A játék megfelelő működéséhez a következő scripteket kell futtatni:

1. [`update_situations_texts.sql`](update_situations_texts.sql)

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
  "3.1 Release/update_situations_texts.sql"