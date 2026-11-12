BEGIN;

ALTER TABLE choices ADD COLUMN IF NOT EXISTS tooltip_text TEXT;
-- Szakertoi mozaik
UPDATE choices
SET tooltip_text = 'A hallgatók egy témát részekre bontva dolgoznak fel. Az azonos résztémával foglalkozó hallgatók ezután szakértői csoportokban megvitatják és elmélyítik tudásukat. Végül visszatérnek eredeti csoportjukba, ahol megosztják egymással egyénileg megszerzett ismereteiket, és közösen építik fel a teljes képet.'
WHERE id = 15;

-- Vitapingpong
UPDATE choices
SET tooltip_text = 'Strukturált vitaforma, amelyben a résztvevők egymás érveire reagálva fejlesztik érvelési és kommunikációs készségeiket. A hangsúly nemcsak a saját álláspont képviseletén, hanem a másik fél érveinek megértésén is van.'
WHERE id = 18;

-- Projekt
UPDATE choices
SET tooltip_text = 'A hallgatók egy valós vagy valósághű problémán dolgoznak együtt, amelynek eredménye egy közösen létrehozott produktum. A módszer fejleszti az együttműködést, a problémamegoldást és a felelősségvállalást.'
WHERE id = 21;

-- Kutatas
UPDATE choices
SET tooltip_text = 'A hallgatók a kutatás folyamatának egyes lépéseit vagy teljes folyamatát végigjárva dolgoznak fel egy problémát. A módszer fejleszti a kritikai gondolkodást, az elemzőképességet és a kutatási kompetenciákat.'
WHERE id = 20;

-- Online csoportmunka
UPDATE choices
SET tooltip_text = 'A hallgatók online felületeken közösen dolgoznak egy feladaton, miközben megosztják ötleteiket és digitális eszközök segítségével együtt alkotnak. A módszer fejleszti az együttműködést, a kommunikációt és a digitális kompetenciákat.'
WHERE id = 19;

-- Fogalomterkep
UPDATE choices
SET tooltip_text = 'A fogalomtérkép segít rendszerezni és vizuálisan megjeleníteni egy téma fogalmait és azok kapcsolatait. Támogatja az összefüggések felismerését és a mélyebb megértést.'
WHERE id = 17;

-- Gamifikacio
UPDATE choices
SET tooltip_text = 'A gamifikáció játékmechanizmusok és játékelemek alkalmazása tanulási helyzetekben. Célja a motiváció, az aktivitás és a bevonódás növelése.'
WHERE id = 16;

-- Hallgatoi kiseloadas, prezentacio
UPDATE choices
SET tooltip_text = 'A hallgatók önállóan vagy csoportban feldolgoznak egy témát, majd azt prezentáció formájában bemutatják társaiknak. A módszer fejleszti az információfeldolgozást, a rendszerezést és az előadói készségeket.'
WHERE id = 23;

-- Szerepjatek
UPDATE choices
SET tooltip_text = 'A hallgatók különböző szerepeket felvéve valós vagy elképzelt helyzeteket játszanak el. A módszer fejleszti a kommunikációt, az empátiát és a problémamegoldást.'
WHERE id = 22;

COMMIT;
