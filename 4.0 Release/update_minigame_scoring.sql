BEGIN;

UPDATE methodology_alignments
SET correct_delta_energy = 0,
    correct_delta_selfreflection = 0,
    correct_delta_competency = 0,
    correct_delta_initiative = 0,
    correct_delta_creativity = 0,
    correct_delta_cooperation = 0,
    correct_delta_motivation = 0,
    incorrect_delta_energy = 0,
    incorrect_delta_selfreflection = 0,
    incorrect_delta_competency = 0,
    incorrect_delta_initiative = 0,
    incorrect_delta_creativity = 0,
    incorrect_delta_cooperation = 0,
    incorrect_delta_motivation = 0;

COMMIT;
