BEGIN;

UPDATE choices
SET delta_energy = -1,
    delta_selfreflection = 1
WHERE id = 4;

UPDATE choices
SET delta_energy = -1,
    delta_selfreflection = 1,
    delta_initiative = 1
WHERE id = 5;

UPDATE choices
SET delta_energy = -2,
    delta_creativity = 2,
    delta_cooperation = 1
WHERE id = 6;

UPDATE choices
SET delta_energy = -2,
    delta_creativity = 1,
    delta_cooperation = 2
WHERE id = 7;

UPDATE choices
SET delta_selfreflection = 2,
    delta_initiative = 2
WHERE id = 9;

UPDATE choices
SET delta_energy = -1
WHERE id IN (10, 11, 12);

UPDATE choices
SET delta_energy = -2,
    delta_selfreflection = 2,
    delta_creativity = 2,
    delta_cooperation = 1
WHERE id = 27;

UPDATE choices
SET delta_energy = -2,
    delta_cooperation = 1
WHERE id = 28;

UPDATE choices
SET delta_cooperation = 1
WHERE id = 30;

UPDATE choices
SET delta_selfreflection = 1,
    delta_creativity = 0
WHERE id = 31;

UPDATE choices
SET delta_selfreflection = -1,
    delta_creativity = 0
WHERE id = 32;

UPDATE choices
SET delta_selfreflection = -1
WHERE id = 40;

UPDATE choices
SET delta_energy = -1,
    delta_selfreflection = -2,
    delta_competency = -2
WHERE id = 47;

UPDATE choices
SET delta_energy = -2,
    delta_initiative = -1,
    delta_motivation = -1
WHERE id IN (52, 120, 125);

UPDATE choices
SET delta_energy = -2,
    delta_competency = -1
WHERE id IN (55, 58);

UPDATE choices
SET next_situation_id = 41
WHERE id = 64;

UPDATE choices
SET delta_energy = -1,
    delta_creativity = -1,
    delta_motivation = -2
WHERE id = 70;

UPDATE choices
SET delta_cooperation = -1
WHERE id = 75;

UPDATE choices
SET delta_energy = -1,
    delta_selfreflection = NULL,
    delta_competency = NULL,
    delta_initiative = NULL,
    delta_creativity = NULL,
    delta_cooperation = -1
WHERE id = 76;

UPDATE choices
SET delta_energy = -1,
    delta_selfreflection = NULL,
    delta_competency = NULL,
    delta_initiative = 1,
    delta_creativity = NULL,
    delta_cooperation = NULL
WHERE id = 77;

UPDATE choices
SET delta_energy = -2,
    delta_selfreflection = NULL,
    delta_competency = NULL,
    delta_initiative = 1,
    delta_creativity = NULL,
    delta_cooperation = 1
WHERE id = 78;

UPDATE choices
SET delta_energy = -3,
    delta_selfreflection = 1,
    delta_competency = NULL,
    delta_initiative = 1,
    delta_creativity = 1,
    delta_cooperation = 1
WHERE id = 79;

UPDATE choices
SET delta_energy = -1,
    delta_selfreflection = 1,
    delta_competency = 2,
    delta_initiative = 2
WHERE id = 126;

UPDATE choices
SET delta_energy = -1,
    delta_selfreflection = 1,
    delta_competency = 2
WHERE id IN (128, 130, 132, 134, 136, 138);

UPDATE choices
SET delta_selfreflection = -1
WHERE id IN (129, 131, 133, 135, 137);

COMMIT;
