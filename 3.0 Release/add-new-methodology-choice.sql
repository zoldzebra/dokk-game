-- Add new choice to situation 12 ("Ideje a fejlesztésre koncentrálnunk!...")
-- Choice: "Új módszer bevonását javaslom."
-- Points: +1 competency, +1 initiative, +1 cooperation

BEGIN;

INSERT INTO choices (id, situation_id, choice_text, next_situation_id, delta_competency, delta_initiative, delta_cooperation)
VALUES (126, 12, 'Új módszer bevonását javaslom.', 13, 1, 1, 1);

COMMIT;
