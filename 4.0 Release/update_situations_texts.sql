BEGIN;

-- Update situation 1: Start message
UPDATE situations
SET title = $$Elindul a közös munkátok!$$
WHERE id = 1;

-- Update situation 2: Online quiz evaluation data
UPDATE situations
SET title = $$A fejlesztői csapatotok megkapja az online kvízek bevezetésével kapcsolatos hallgatói visszajelzéseket$$,
    situation_text = $$<p>Az online kvíz módszerét alkalmazó kurzusokat a hallgatók az <hedgie-b>egyetemi OMHV</hedgie-b> rendszerben a következőképpen értékelték:</p>
<ul>
  <li>Az oktató <hedgie-b>módszerhasználatával</hedgie-b> elégedett az előző három év átlaga alapján a kitöltők 53%, az online kvíz bevezetése óta 34%.</li>
  <li>A kurzus <hedgie-b>interaktivitással</hedgie-b> elégedett az előző három év átlaga alapján a kitöltők 13%, az online kvíz bevezetése óta 21%.</li>
  <li>A kurzus <hedgie-b>oktatóját ajánlaná-e</hedgie-b> hallgatótársainak: az előző három év átlaga alapján a kitöltők 69%, az online kvíz bevezetése óta 61%.</li>
</ul>
<p>A hallgatóktól kapott jellegzetes szöveges válaszok:</p>
<p>„Az <hedgie-b>elején fun volt</hedgie-b> a kvízek használata"<br>
„Hiába mások a kérdések, tök <hedgie-b>unalmas</hedgie-b> mindig ugyanazt a játékot gyúrni."<br>
„<hedgie-b>Kínos</hedgie-b> volt a technikai hiba hosszas keresgélése, miközben rengeteg dolgunk lett volna. Amatőrök."<br>
„A <hedgie-b>kvízből keveset tanulunk</hedgie-b>, mert képtelen az alapfogalmaknál mélyebbre menni."<br>
„Idegesít az időmérés, <hedgie-b>nem szeretek kapkodni</hedgie-b>, stresszel. Szerintem ez nem lóverseny. Vagy mégis?"</p>$$
WHERE id = 2;

-- Update situation 3
UPDATE situations
SET title = $$Az OMHV eredményei alapján el tudjátok kezdeni a kurzusok fejlesztését?$$
WHERE id = 3;

-- Update situation 4
UPDATE situations
SET title = $$Dr. Lehet Péter, oktatási dékánhelyettes nem ért veletek egyet. Az OMHV adatok alapján nem lehet még eredményesen átalakítani a kurzusokat, további információk megszerzését javasolja!$$
WHERE id = 4;

-- Update situation 5
UPDATE situations
SET title = $$Dr. Lehet Péter, oktatási dékánhelyettes nem fogadja el, hogy most nincs idő a fejlesztéssel foglalkozni. Folytatnotok kell a tervezést a fejlesztői csapattal.$$
WHERE id = 5;

-- Update situation 6
UPDATE situations
SET title = $$A csapatban a feladatok kiosztása során te kapod meg az adatgyűjtés feladatát.
Milyen módszert javasolsz ehhez a csapatnak?$$
WHERE id = 6;

-- Update situation 7: Student questionnaire results
UPDATE situations
SET title = $$A hallgatói kérdőíves vizsgálat eredményei$$,
    situation_text = $$<p>Az érintett kurzusok hallgatóinak 72%-a (N=223) töltötte ki a kérdőívet. A megkérdezett hallgatók 34%-a jeleölte meg azt, hogy az online kvízekkel kapcsolatos <hedgie-b>élegedettségé folyamatosan csökkent</hedgie-b> a félév során. A nyitott kérdéses indoklásból kiderült, hogy a módszer játékos, interaktív jellege, továbbá a verseny élményszerűsége kezdetben motiválta a hallgatókat, hogy minél jobban igyekezzenek megtérteni a tananyagot. Később viszont a <hedgie-b>kvízek monotonná és egyre unalmasabbá váltak</hedgie-b>, mivel sok oktató alatt ezt használta.</p>
<p>A hallgatók 64%-a úgy vélte, hogy a <hedgie-b>kvíz inkább csak felszines aktivitást generál</hedgie-b>, nem ösztönzi a véleményalkotást, kreativitást és problémamegoldást. 82% szerint <hedgie-b>nem képes megjeleníteni az anyag mélyebb összefüggéseit</hedgie-b>, amelyek a kurzus későbbi részeiben kulcsfontosságúvá váltak. 59% gyakrabban dolgozna kiscsoportban az egyéni válaszadás helyett. A válaszadók 94%-a nem vetné el a digitális módszerek alkalmazását, és 87% <hedgie-b>többféle módszert felválltva alkalmazna</hedgie-b> a kurzusok során. Összesen 14 különféle módszerre és eszközre érkezett javaslat.</p>$$
WHERE id = 7;

-- Update situation 8: Expert consultation results
UPDATE situations
SET title = $$A külső szakértővel való beszélgetés eredményei$$,
    situation_text = $$<p>A szakértői megebeszélés során világossá vált számunkra, hogy a hallgatói <hedgie-b>aktivitás növeléséhez a kurzus strukturájának átgondolása és az ehhez jól illeszkedő digitális eszközök bevezetése szükséges</hedgie-b>. A szakértő segítségével sikerült azonosítani a legnagyobb kihívásokat, mint a hallgatói érdeklenséget és a passzív hozzáállást.</p>
<p><hedgie-b>A szakértő javasolt</hedgie-b> néhány konkrét megoldási lehetőséget is, például a <hedgie-b>blended tanulási formát</hedgie-b>, mint amilyen a <hedgie-b>fordított osztályterem</hedgie-b>, vagy az <hedgie-b>online csoportmunkát</hedgie-b> és az ehhez kötődő osztálytermi visszajelzéseket. A szakértő továbbá javasolta, hogy bármeyik új módszer, eszköz kipróbálásakor érdemes <hedgie-b>visszajelzést kérni a hallgatóktól</hedgie-b> és ahol lehet, már menet közben finomhangolni a megoldásokat.</p>$$
WHERE id = 8;

-- Update situation 9: Student focus group results
UPDATE situations
SET title = $$Hallgatói fókuszcsoport eredményei$$,
    situation_text = $$<p>A fókuszcsoportos interjúba vegyesen 1-2 hallgatót vontunk be a Studentia Kar szakjairól, alap- és mesterképzésről is. A beszélgetésekben a hallgatók elmondták, hogy az <hedgie-b>első hetekben érdekesnek és izgalmasnak találták az online kvízeket</hedgie-b>, elsősorban a Mekpit használatát. A játékos kvízek, a versenyhelyzet és az azonnali visszajelzés feldobta az órákat. Úgy érezték, hogy az <hedgie-b>online kvíz segiti őket a tananyag átlátásában</hedgie-b>. Különösen szerettek kiscsoportban részt venni a kvízekben.</p>
<p>Ugyanakkor <hedgie-b>idővel egyre fárasztóbbá vált számukra</hedgie-b> a sok online kvíz használata. Ráadásul a módszer <hedgie-b>inkább csak felszínes aktivitást generált</hedgie-b>, de nem ösztönözte őket arra, hogy valóban elmélyedjenek a tananyagban. A fókuszcsoport eredményei alapján a Mekpit kvíz kiegészítése más módszerekkel és <hedgie-b>valós szituációk beemelésével erősitheti</hedgie-b>, hogy hallgatóként érdekelődjnek és <hedgie-b>el is mélyüljenek a tanulásban</hedgie-b>.</p>$$
WHERE id = 9;

-- Update situation 10: Joint teacher reflection and consultation results
UPDATE situations
SET title = $$Közös oktatói reflexió, egyeztetés eredményei$$,
    situation_text = $$<p>A közös oktatói reflektálásra minden szakról érkezett 1-1 oktató. A legtöbb oktató egyetértett abban, hogy a hallgatók kezdetben szívesen vettek részt a játékban, különösen a versenyelemek és a valós idejű visszajelzés miatt. Többen kiemeltek, hogy a <hedgie-b>módszer teljesítményközpontú viselkedésre ösztönözte a hallgatókat</hedgie-b>, akik gyakran a jó pontszám elérésére törekedtek anélkül, hogy teljes mértékben megértették volna a mögöttes tartalmat. Sokan úgy éreztek, hogy míg a kvízek alapvető ismeretek átismétlésére hatékonyak voltak, az <hedgie-b>elmélyültebb tanulás, a kritikus gondolkodás vagy az értelmes vita előségitésére kevéssé</hedgie-b>.</p>
<p>Bár az oktatók nyitottak maradtak a digitális és interaktív eszközökre, javasolták, hogy a <hedgie-b>Mekpit-t elsősorban bemelegitésére, formatív ellenőrzésre vagy kulcsfogalmak áttekintésére használják</hedgie-b>. A közös ülésen számos gyakorlati javaslat is felszínre került, például a kvíz kombinálása csoportos feladatokkal, esetmegbeszélésekkel vagy projektmunkával a mélyebb megértés támogatása érdekében.</p>$$
WHERE id = 10;

-- Update situation 11
UPDATE situations
SET title = $$Fontos eredményeket kaptunk, de jó lenne még újabb vizsgálatot is végezni a hallgatói tapasztalatok feltárásához!$$,
    situation_text = NULL
WHERE id = 11;

-- Add new situation referred from situation 11 through choice 8
INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (71, 'Még egy felmérés valószínűleg már nem hozna teljesen új szempontokat, viszont csökkenti az energiád! Figyeld a továbbiakban is a pontjaid változását!', null, 'hedgie_terulo.png', FALSE, FALSE, FALSE, 1, 11);

UPDATE choices SET next_situation_id = 71 WHERE id = 8;

-- Create new situation for choice 12 and a new choice for the new situation
INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (72, $$Miután döntöttünk a fő fejlesztési irányról, két hét múlva találkozom Dr. Lehet Péter, oktatási dékánhelyettessel.<br></br>
<i>- Hogyan haladtok?</i> - kérdi tőlem.$$, NULL, 'hedgie_terulo.png', FALSE, FALSE, FALSE, 2, NULL);

INSERT INTO choices (situation_id, choice_text, next_situation_id)
VALUES (72,
  $$Sajnos, elakadtunk, mindenki folytatni akarja, amit eddig is csinált oktatóként, de így egyáltalán nem látjuk, hogy hogyan fog tudni javulni a hallgatói elégedettség és eredményesség. Ráadásul mindjárt kezdődik a következő félév.$$,
  14);

-- Update situation 12's choices
UPDATE choices SET choice_text = 'Egy másik online eszközt vonjunk be, például Miro Board-t vagy egy új MI alapú szoftvert.' WHERE id = 11;
UPDATE choices
  SET choice_text = 'Mégse legyen online kvíz, mindenki csinálja azt, ami nála korábban bevált.',
      next_situation_id = 72
WHERE id = 12;

-- Update situation 13 and its choice
UPDATE situations
SET title = $$Miután döntöttünk a fő fejlesztési irányról, két hét múlva találkozom Dr. Lehet Péter, oktatási dékánhelyettessel.<br></br>
<i>- Hogyan haladtok?</i> - kérdi tőlem.$$
WHERE id = 13;

-- Update situation 14
UPDATE situations
SET title = $$Tanácstalannak érzem magam.<br></br>
<i>Mit tegyünk, Péter?</i>$$
  WHERE id = 14;

UPDATE choices SET choice_text = 'Sajnos, elakadtunk. Talán túlzottan elmélyültünk az online eszközök adta lehetőségekben, és így nem állt össze, hogyan változtassunk a kurzusokon annak érdekében, hogy javuljon a hallgatói elégedettség és eredményesség. Ráadásul mindjárt kezdődik a következő félév, a végén kifutunk az időből.'
  WHERE id = 13;

-- Create new situation following choice 126
INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (73, $$Nagyon jó fejlesztési irány, jó, hogy Dr. Lehet Péter, oktatási dékánhelyettes pont most hívta meg Horváth Gábort, aki régóta oktatásfejlesztéssel foglalkozik, hogy tartson egy módszertani workshopot.$$,
  NULL, 'hedgie_terulo.png', FALSE, FALSE, FALSE, 1, 15);

-- Update choice 126
UPDATE choices SET next_situation_id = 73 WHERE id = 126;

-- Update situation 15
UPDATE situations
SET title = $$Szerda délután Gábor tart egy módszertani workshopot...$$,
    situation_text = $$<p>Számos módszer előkerül, melyek túlmutatnak egy online kvíz használatán és segítenek a hallgatói motiváció és aktivitás fenntartásaban. Te is <hedgie-b>válassz</hedgie-b> ezek közül <hedgie-b>hármat, amit hasznosnak ítélsz</hedgie-b> a kurzusod átálakitásához!</p>$$
WHERE id = 15;

-- Update situation 17 to info type and create a new situation after it to contain the minigame itself.
INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (74, $$Válaszd ki, hogy az általad fontosnak tartott módszerekhez milyen célok és értékelési forma illeszkedik legjobban!$$,
  $$<p><hedgie-b>Húzd be a kártyákat a megfelelő helyre!</hedgie-b> Ha zöld színűre vált, akkor helyes a megoldás.</p>$$, 'hedgie_terulo.png', FALSE, FALSE, FALSE, 4, 18);

UPDATE situations
SET title = $$A konzultáción Gábor felhívja a figyelmeteket arra, hogy ahhoz, hogy a hallgatók aktív bevonódását eredményesen tudjátok segíteni még egy további szempontot kell átgondolnotok...$$,
    situation_text = $$<p>Ez az elmélet a konstruktív összehangolás, ami szerint nem elég a módszerek végiggondolása, hanem az előre meghatározott <hedgie-b>hallgatói tanulási eredmények</hedgie-b> alapján szükséges tervezni az értékelést, valamint a tanulási eredmények fejlődését biztositó <hedgie-b>módszereket</hedgie-b>, tanulási tevékenységeket és tanulástámogatást. Azzal tudjuk előségíteni egy kurzuson belül a tanulási eredmények (tudás, képesség, attitűd) hatékony fejlődését, ha olyan hallgatói tevékenységeket, módszereket kínálunk, ami az adott kompetenciát valóban fejleszti és ehhez olyan <hedgie-b>értékelési formát</hedgie-b> párosítunk, ami az adott területen bekövetkezett változásra ad visszajelzést.</p>$$,
    situation_type = 1,
    next_situation_id = 74
WHERE id = 17;

-- Update situation 18 so its choices lead to different results before moving on to situation 19.
UPDATE situations
SET title = $$Miután már sok új oktatási szempontról tanultatok a workshopon, először közösen álltok neki egy mintatematika elkészítésének. A Bizonytalanság természete c. tantárgy leírásáról két változat készül el. Melyiket tartod szakszerűbbnek a tanult konstruktív összehangolás alapján?$$,
    situation_text = NULL
WHERE id = 18;

INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (75, $$Jól sikerült összehangolni a módszertant a kurzus céljaival és értékelésével.$$,
  NULL, 'word.jpg', FALSE, FALSE, FALSE, 1, 19);

INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (76, $$Tartalmas a tematika, de nem sikerült a célokat, módszereket és értékelést teljesen összhangba hozni. Erre érdemes figyelni, mert segít az újítás sikeres megvalósításában!$$,
  NULL, 'word.jpg', FALSE, FALSE, FALSE, 1, 19);

-- A tematika jumps to situation 75
UPDATE choices SET next_situation_id = 75 WHERE id = 27;
-- B tematika jumps to situation 76
UPDATE choices SET next_situation_id = 76 WHERE id = 28;

-- Update situation 19 texts and choices
UPDATE situations
SET title = $$A csapat közös ebédeléssel ünnepli meg, hogy még a félév kezdete előtt, sikerült mindannyiotoknak elkészülni a kurzusaitok megújított tematikáival.$$,
    situation_text = $$<p>Az ebéd utáni <hedgie-b>lelkes beszélgetés</hedgie-b> során egyik kollégád felveti, hogy az <hedgie-b>új tematikák kialakításába</hedgie-b> végülis a <hedgie-b>hallgatókat</hedgie-b> eddig <hedgie-b>nem vontátok be</hedgie-b>, ami talán baj. Te <hedgie-b>mit gondolsz</hedgie-b> erről?</p>$$
WHERE id = 19;

UPDATE choices SET choice_text = $$Fontos, a hallgatók bevonása, de a kurzus tervezéséhez mi értünk. Arra persze figyeljünk, hogy rendszeresen kérjünk tőlük visszajelzést a megvalósítás során is.$$ WHERE id = 29;
UPDATE choices SET choice_text = $$Igen, talán már a kurzusok tervezésébe is be lehet vonni a hallgatókat, hiszen nemcsak jó ötleteik lehetnek, hanem ezáltal a hallgatók is fejlődhetnek, például kezdeményezőkészségben, innovativitásban.$$ WHERE id = 30;

-- Update situation 20 title
UPDATE situations
SET title = $$Nemsokára élesben is kipróbálhatjuk a megújult kurzusok tervét. Előtte szeretnél visszajelzést kérni az eddigi munkádról és fejlődésedről a fejlesztői csapatod többi tagjától?$$
WHERE id = 20;

COMMIT;