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

-- Update choice texts
UPDATE choices
SET choice_text = $$Hallgatói kérdőív$$
WHERE id = 4;

UPDATE choices
SET choice_text = $$Hallgatói fókuszcsoportos interjú$$
WHERE id = 6;

UPDATE choices
SET choice_text = $$Közös oktatói reflexió, egyeztetés$$
WHERE id = 7;

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
    situation_text =
      $$<p>
      Az érintett kurzusok hallgatóinak 72%-a (N=223) töltötte ki a kérdőívet. A megkérdezett hallgatók 34%-a jelölte meg azt, hogy az online kvízekkel kapcsolatos <hedgie-b>elégedettsége folyamatosan csökkent</hedgie-b> a félév során. A nyitott kérdéses indoklásból kiderült, hogy a módszer játékos, interaktív jellege, továbbá a verseny élményszerűsége kezdetben motiválta a hallgatókat, hogy minél jobban igyekezzenek megérteni a tananyagot. Később viszont a <hedgie-b>kvízek monotonná és egyre unalmasabbá váltak,</hedgie-b> mivel sok oktató állandóan ezt használta.
      </p>
      <p>
      A hallgatók 64%-a úgy vélte, hogy a <hedgie-b>kvíz inkább csak felszínes aktivitást generál</hedgie-b>, nem ösztönzi a véleményalkotást, kreativitást és problémamegoldást. 82% szerint <hedgie-b>nem képes megjeleníteni az anyag mélyebb összefüggéseit,</hedgie-b> amelyek a kurzus későbbi részeiben kulcsfontosságúvá váltak. 59% gyakrabban dolgozna kiscsoportban az egyéni válaszadás helyett. A válaszadók 94%-a nem vetné el a digitális módszerek alkalmazását, és <hedgie-b>87% többféle módszert felváltva alkalmazna</hedgie-b> a kurzusok során. Összesen 14 különféle módszerre és eszközre érkezett javaslat.
      </p>$$
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

INSERT INTO choices (id, situation_id, choice_text, next_situation_id)
VALUES (127, 72,
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

-- Update situation 21 texts and choices
UPDATE situations
SET title = $$Kezdődik a félév, újra összeült a fejlesztői csapatotok...$$,
    situation_text = $$<p>A beszélgetés arról folyik, hogy <hedgie-b>milyen gyakran találkozzatok</hedgie-b>. Te mit <hedgie-b>javasolsz</hedgie-b>?</p>$$
WHERE id = 21;

UPDATE choices SET choice_text = $$Találkozzunk havonta és a találkozók előtt szedjük össze, hogy éppen milyen témáról érdemes egyeztetni. Így mindenki tud készülni a megbeszélésre.$$ WHERE id = 34;

-- Update situation 22 texts and choices, reroute success choices through a new situation (77)
UPDATE situations
SET title = $$A fejlesztői csapat minden tagja elkészült a pilot kurzusával. A te kurzusod is elindul! Hogyan szeretnéd bemutatni a kurzus újításait a hallgatóidnak?$$
WHERE id = 22;

-- Insert a new situation coming from 22 and going to 23
INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (77, $$Az óra után örülsz, mert hallod, hogy a hallgatók elégedettek, mivel megosztottad velük a kurzus újításait.$$,
        NULL, 'folyoso_interakcio.png', FALSE, FALSE, FALSE, 1, 23);

UPDATE choices
SET next_situation_id = 77
WHERE id = 37;

UPDATE choices
SET choice_text = $$Nem magyarázok, hanem belehelyezem őket egy általam kitalált „mini szimuláció”-ba, hogy megtapasztalhassák az új tanulási irányt, majd kérem, hogy reflektáljanak erre.$$,
    next_situation_id = 77
WHERE id = 38;

UPDATE choices
SET choice_text = $$Készítek egy rövid igényfelmérést a hallgatóim körében, hogy lássam, mire van szükségük.$$,
    next_situation_id = 77
WHERE id = 39;

UPDATE choices SET choice_text = $$A legjobb, ha elkezdem a tanítást, majd menet közben megértik a hallgatók, hogy miről szól a megújított módszertan.$$ WHERE id = 40;

-- Update situation 24 and its choices
UPDATE situations
SET title = $$A problémamegoldáshoz még milyen segítséget kérsz?$$,
    situation_text = $$Gondolj arra, mi lenne a legjobb megoldás az adott problémád kapcsán!$$
WHERE id = 24;

-- Insert a new situation coming from 24 and going back to 24
INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (78, $$Ezek nem olyan nagy pedagógiai problémák, hogy hospitálni kéne hozzá. Válassz egy egyszerűbb megoldást!$$,
        NULL, 'hedgie_terulo.png', FALSE, FALSE, FALSE, 1, 24);

-- Insert a new situation coming from 24 and going back to 24
INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (79, $$Érdemes lenne azért valamilyen segítséget kérni!$$,
        NULL, 'hedgie_terulo.png', FALSE, FALSE, FALSE, 1, 24);

UPDATE choices
SET choice_text = $$Segítséget kérek egy tapasztalt kollégámtól.$$
WHERE id = 48;

-- remove this choice (situation 1 does not show choices)
UPDATE choices
SET situation_id = 1
WHERE id = 49;

UPDATE choices
SET choice_text = $$Megkérem egy kiváló oktató kollégám, akiről tudom, hogy fontos neki az aktív tanulás, hogy hospitálhassak egy óráján.$$
WHERE id = 50;

UPDATE choices
SET next_situation_id = 78
WHERE id IN (50, 51);

UPDATE choices
SET next_situation_id = 79
WHERE id = 52;

-- Update situation texts after 25
UPDATE situations
SET title = $$A következő héten elmegyek órát látogatni a kollégához és az óramegfigyelésre készülve...$$
WHERE id = 25;

UPDATE situations
SET title = $$Az előzetesen kialakított általános megfigyelési szempontsor...$$,
    situation_text = $$
      <ul>
        <li>A <hedgie-b>célok, tanulási eredmények</hedgie-b> megjelenése, kapcsolata az órával </li>
        <li>A <hedgie-b>hallgatók előzetes tudásá</hedgie-b>val való kapcsolat megteremtése </li>
        <li>A hallgatók <hedgie-b>interakció</hedgie-b>ja az oktatóval és egymással </li>
        <li>Az oktató <hedgie-b>facilitálás</hedgie-b>a, pl. hallgatók aktivitásának biztosítása, csoportmunka szervezése, kérdezés, az elemző gondolkodás lépéseinek támogatása </li>
        <li>Az <hedgie-b>egész</hedgie-b> hallgatói <hedgie-b>csoport bevonása </hedgie-b></li>
        <li>A <hedgie-b>hallgatók bátorítása</hedgie-b></li>
        <li>A tanítás és <hedgie-b>tanulás teré</hedgie-b>nek kihasználása </li>
        <li>A hallgatók számára adott formatív, <hedgie-b>megerősítő visszajelzések</hedgie-b> minősége </li>
        <li>A <hedgie-b>tanultak összegzése</hedgie-b> és annak kiemelése, hogy mit tanultak a hallgatók </li>
        <li>A hallgatók támogatása abban, hogy <hedgie-b>tudatosítsák a tanulási folyamatukat</hedgie-b></li>
      </ul>
      $$
WHERE id = 26;

UPDATE situations
SET title = $$Az előzetesen kialakított megfigyelési szempontsor, ami az újításunk szempontjaira is figyel...$$,
    situation_text = $$
      <ul>
        <li>A <hedgie-b>célok, tanulási eredmények</hedgie-b> megjelenése, kapcsolata az órával</li>
        <li>A <hedgie-b>hallgatók innovatív gondolkodásá</hedgie-b>nak, kompetenciáinak fejlesztésének megjelenése</li>
        <li>A hallgatók <hedgie-b>előzetes tudás</hedgie-b>ával való kapcsolat megteremtése</li>
        <li>A hallgatók <hedgie-b>interakció</hedgie-b>ja az oktatóval és egymással</li>
        <li>Az oktató <hedgie-b>facilitálás</hedgie-b>a, pl. hallgatói munka támogatása, csoportmunka szervezése, kérdezés, az elemző gondolkodás lépéseinek támogatása</li>
        <li>Az online kvízek mellett <hedgie-b>új, a hallgatókat aktivizáló módszerek, feladatok használata</hedgie-b></li>
        <li>Az <hedgie-b>egész</hedgie-b> hallgatói <hedgie-b>csoport bevonása</hedgie-b></li>
        <li>A hallgatók <hedgie-b>bátorítás</hedgie-b>a</li>
        <li>A tanítás és <hedgie-b>tanulás teré</hedgie-b>nek kihasználása</li>
        <li>A hallgatók számára adott formatív, <hedgie-b>megerősítő visszajelzések</hedgie-b> minősége</li>
        <li><hedgie-b>A visszajelzések az innovatív, aktivizáló módszerek használatának sikerességére</hedgie-b></li>
        <li>A <hedgie-b>tanultak összegzése</hedgie-b> és annak kiemelése, hogy mit tanultak a hallgatók</li>
        <li>A hallgatók támogatása abban, hogy <hedgie-b>tudatosítsák a tanulási folyamatukat</hedgie-b></li>
      </ul>
    $$
WHERE id = 27;

UPDATE situations
SET title = $$A következő héten elhívom a kollágát az órámra és ...$$
WHERE id = 28;

UPDATE situations
SET title = $$Az előzetesen kialakított általános megfigyelési szempontsor...$$,
    situation_text = $$
      <ul>
        <li>A <hedgie-b>célok, tanulási eredmények</hedgie-b> megjelenése, kapcsolata az órával </li>
        <li>A <hedgie-b>hallgatók előzetes tudásá</hedgie-b>val való kapcsolat megteremtése </li>
        <li>A hallgatók <hedgie-b>interakció</hedgie-b>ja az oktatóval és egymással </li>
        <li>Az oktató <hedgie-b>facilitálás</hedgie-b>a, pl. hallgatók aktivitásának biztosítása, csoportmunka szervezése, kérdezés, az elemző gondolkodás lépéseinek támogatása </li>
        <li>Az <hedgie-b>egész</hedgie-b> hallgatói <hedgie-b>csoport bevonása </hedgie-b></li>
        <li>A <hedgie-b>hallgatók bátorítása</hedgie-b></li>
        <li>A tanítás és <hedgie-b>tanulás teré</hedgie-b>nek kihasználása </li>
        <li>A hallgatók számára adott formatív, <hedgie-b>megerősítő visszajelzések</hedgie-b> minősége </li>
        <li>A <hedgie-b>tanultak összegzése</hedgie-b> és annak kiemelése, hogy mit tanultak a hallgatók </li>
        <li>A hallgatók támogatása abban, hogy <hedgie-b>tudatosítsák a tanulási folyamatukat</hedgie-b></li>
      </ul>
    $$
WHERE id = 29;

UPDATE situations
SET title = $$Az előzetesen kialakított megfigyelési szempontsor, ami az újításunk szempontjaira is figyel...$$,
    situation_text = $$
      <ul>
        <li>A <hedgie-b>célok, tanulási eredmények</hedgie-b> megjelenése, kapcsolata az órával</li>
        <li>A <hedgie-b>hallgatók innovatív gondolkodásá</hedgie-b>nak, kompetenciáinak fejlesztésének megjelenése</li>
        <li>A hallgatók <hedgie-b>előzetes tudás</hedgie-b>ával való kapcsolat megteremtése</li>
        <li>A hallgatók <hedgie-b>interakció</hedgie-b>ja az oktatóval és egymással</li>
        <li>Az oktató <hedgie-b>facilitálás</hedgie-b>a, pl. hallgatói munka támogatása, csoportmunka szervezése, kérdezés, az elemző gondolkodás lépéseinek támogatása</li>
        <li>Az online kvízek mellett <hedgie-b>új, a hallgatókat aktivizáló módszerek, feladatok használata</hedgie-b></li>
        <li>Az <hedgie-b>egész</hedgie-b> hallgatói <hedgie-b>csoport bevonása</hedgie-b></li>
        <li>A hallgatók <hedgie-b>bátorítás</hedgie-b>a</li>
        <li>A tanítás és <hedgie-b>tanulás teré</hedgie-b>nek kihasználása</li>
        <li>A hallgatók számára adott formatív, <hedgie-b>megerősítő visszajelzések</hedgie-b> minősége</li>
        <li><hedgie-b>A visszajelzések az innovatív, aktivizáló módszerek használatának sikerességére</hedgie-b></li>
        <li>A <hedgie-b>tanultak összegzése</hedgie-b> és annak kiemelése, hogy mit tanultak a hallgatók</li>
        <li>A hallgatók támogatása abban, hogy <hedgie-b>tudatosítsák a tanulási folyamatukat</hedgie-b></li>
      </ul>
    $$
WHERE id = 30;

UPDATE situations
SET title = $$
              A honlapon keresgélve az innoválás tipikus problémái közt találok egy részt, ami pont azzal foglalkozik, hogy mi van, ha kicsúszunk az időből, felborul az órák ütemezése...
            $$,
    situation_text = $$
              Ne feledd, hogy az <hedgie-b>újításod nem öncélú</hedgie-b>, valamit hatékonyabbá tesz az órád során. Gondold át, milyen tartalmak elsajátítását <hedgie-b>gyorsítja és/vagy mélyíti</hedgie-b>, amivel kiváltja a korábbi óraterv tartalmait vagy tevékenységeit. (NB: Például az ismétlésképp frontálisan megtartott kiselőadásod helyett tartasz beugró online kvízt és közös megbeszélést, nem azon felül!) A számodra látszólag <hedgie-b>kevesebb a hallgatók számára több!</hedgie-b> Nem a teljes tartalmat kell végigvenned velük, hanem a <hedgie-b>munkaformát, a gondolkodásmódot gyakoroltatni a témában</hedgie-b>, hogy önállóan is tudjanak dolgozni a további tartalmaiddal. Így <hedgie-b>amennyi belefér az órádba, annyi elég is!</hedgie-b> Győződj meg az órán, hogy tudják kezelni a tartalmaidat, a <hedgie-b>többit pedig bízd a hallgatóidra</hedgie-b>, és inkább gyakoroltass többet a kontakt alkalmakkor.
              $$,
    next_situation_id = 24
WHERE id = 31;

UPDATE situations
SET title = $$
              A honlapon keresgélve az innoválás tipikus problémái közt találok egy részt, ami pont azzal foglalkozik, hogy mi van, ha technikai problémák merülnek fel...
            $$,
    situation_text = $$
              A <hedgie-b>digitális tér</hedgie-b> ugyanolyan <hedgie-b>előkészítést igényel</hedgie-b>, mint maga a tanterem. Amikor kontakt órán online kvízt alkalmazol, a <hedgie-b>digitális teret ötvözöd a fizikális térrel, ami többletmunka.</hedgie-b> Az órától függetlenül feladat az internet biztosításának feltételeiről gondoskodni, oktatóként jelezd ezt a tanszéken. Alakíts ki <hedgie-b>élő kapcsolatot az informatikusokkal</hedgie-b>, tudjanak róla, hogy mi az igény, és <hedgie-b>kérj háttér támogatást</hedgie-b> az órák idejére. Engedd meg, hogy szükség esetén egy eszközről akár többen is válaszolhassanak - válassz ennek megfelelő feladatot (például szófelhő). A QR-kódjaidat előre ellenőrizd le, alkalmazz megfelelő felbontást. Törekedj <hedgie-b>többször használható QR-kódok alkalmazására</hedgie-b>, ezeket néhány példányban kinyomtatva is beviheted a terembe. A QR-kód csak gyorsítja a belépést, de mindig van manuálisan bepötyöghető elérési út is, vetítsd ki ezt is. Ne tévesszen meg az ”online kvíz” elnevezés, ne feledd, hogy voltaképpen a módszertanodat újítottad meg! <hedgie-b>A digitális eszköz is csak egy eszköz</hedgie-b>, szükség esetén konvertálhatod a feladatot analóg eszközökre (például tábla, post-it).
              $$,
    next_situation_id = 24
WHERE id = 32;

UPDATE situations
SET title = $$
              A honlapon keresgélve az innoválás tipikus problémái közt találok egy részt, ami pont azzal foglalkozik, hogy mi van, ha a hallgatók nem figyelnek, nem konstruktívan vesznek részt az órán...
            $$,
    situation_text = $$
              Ne feledd, hogy amikor <hedgie-b>új módszert vezetsz be</hedgie-b>, az a hallgatók számára új munkaformát jelent. <hedgie-b>Tájékoztasd őket</hedgie-b> - a kurzus elején, az előző óra végén, vagy akár üzenetben (e-learning rendszer, e-mail) -, <hedgie-b>hogy mire készülsz, és tőlük mit vársz</hedgie-b> (például legyen náluk okoseszköz, előzetesen lépjenek fel a netre a megadott WiFi-kóddal, töltsék le az appot vagy regisztráljanak be előre, stb.). Az új munkaformát és <hedgie-b>módszert tanítsd is meg nekik</hedgie-b>, biztosíts gyakorlási lehetőséget az első alkalommal, kifejezetten a platform megismerésére, a <hedgie-b>feladattípusok begyakorlására</hedgie-b> technikai szempontból. (Ha ezt témafüggetlen, akár vicces kérdésekkel teszed, még lelkesebbek lesznek a hallgatóid!) Győződj meg róla, hogy <hedgie-b>készen állnak, mielőtt élesben beveted az újdonságot</hedgie-b>, és biztasd őket arra, hogy ehhez <hedgie-b>kérjenek segítséget</hedgie-b> akár tőled, akár egymástól. Ne felejtsd el megadni nekik a kereteket: mikor vegyék elő az eszközt, mire és meddig használják, mikor tegyék el! <hedgie-b>Ha megvan a hozzáférésük, magabiztosan kezelik a digitális eszközödet,</hedgie-b> és megbeszélted velük, mire megy ki a játék, garantáltan <hedgie-b>figyelni fognak, és nem csak követni lesznek képesek</hedgie-b> az órádat, hanem segíteni is fogják.
              $$,
    next_situation_id = 70
WHERE id = 33;

UPDATE situations
SET title = $$
              A honlapon keresgélve az innoválás tipikus problémái közt találok egy részt, ami pont azzal foglalkozik, hogy mi van, ha a hallgatók nem akarnak annyi energiát beletenni az órákba...
            $$,
    situation_text = $$
              <hedgie-b>Győződj meg róla</hedgie-b>, hogy nem tervezted túl a kurzust, az óraszámuknak megfelelő <hedgie-b>reális idő és munkaráfordítást követelsz a hallgatóktól</hedgie-b> - hiszen ne feledd, hogy vannak más kurzusaik is, és van életük is! <hedgie-b>Ha változtatsz, ezt kommunikáld az új hallgatóid felé</hedgie-b>, és hangsúlyozd ki, hogy más ez a kurzus, mint amire a felsőbbévesektől receptet kaptak - érdemes <hedgie-b>átbeszélni velük előzetesen kalkulált energiaszükségletüket!</hedgie-b> Az új módszereidről, eszközeidről <hedgie-b>mindig kérj visszajelzést:</hedgie-b> ismerik-e, szeretik-e, mit használnak szívesen (például más órákon tapasztaltak alapján). <hedgie-b>Apránként vezesd be az újdonságokat</hedgie-b>, győződj meg róla, hogy értik a relevanciáját. Ne feledd, amit szívesen csinálnak, ami sikerélményt jelent, és <hedgie-b>aminek értelmét látják, abba az emberek több energiát tesznek.</hedgie-b> Ne várj mindenkitől egyforma erőbedobást és lelkesedést! <hedgie-b>Menet közben és a kurzus végén is kérj visszajelzést,</hedgie-b> hogy alakítani tudd az újdonságaidat. Táplálkozz a pozitív visszajelzésekből, és tekints konstruktívan a kritikákra!
              $$,
    next_situation_id = 70
WHERE id = 35;

UPDATE situations
SET title = $$
              A honlapon keresgélve az innoválás tipikus problémái közt találok egy részt, ami pont azzal foglalkozik, hogy mi van, ha a hallgatók nem aktívak az órákon, többen el is utasítják az új feladatokat...
            $$,
    situation_text = $$
              A <hedgie-b>hallgatók</hedgie-b> alapvetően aktívak, <hedgie-b>szeretik</hedgie-b> a feladatokat, a <hedgie-b>változatosságot és a társakkal való interakciót</hedgie-b>. Ha ellenállást tapasztalsz, első körben a biztonságérzetüket vizsgáld meg: valóban <hedgie-b>adottak-e a</hedgie-b> (technikai, tudásbeli, eszközös stb.) <hedgie-b>feltételek a feladat elvégzéséhez; értik-e pontosan a feladatot; felkészültek-e arra, hogy mit, miért és hogyan kell csinálniuk;</hedgie-b> sikerélményt nyújtanak-e a feladatok; változatosak-e a feladatok, hasznosak-e a feladatok; belefér-e a feladat a rendelkezésükre álló időkeretbe; <hedgie-b>támogatja-e a feladat a tananyag elsajátítását</hedgie-b>, a vizsgára való felkészülést? Ezeket a kérdéseket először tedd fel magadnak, akár hasonló feladatokkal dolgozó kollégáidnak. Ha <hedgie-b>átgondoltad</hedgie-b> a lehetséges válaszokat, <hedgie-b>kérdezd meg a hallgatóidat, hogy megismerd az ő szempontjaikat is!</hedgie-b> Győződj meg róla, hogy ők is tisztában vannak a feladat céljával, kivitelezhetőségével és a várható eredménnyel! Az <hedgie-b>ellenállást sokszor az ismeretlentől való félelem</hedgie-b>, irracionális <hedgie-b>szorongás váltja ki,</hedgie-b> ami akár egy tisztázó beszélgetéssel feloldható.
              $$,
    next_situation_id = 70
WHERE id = 36;

UPDATE situations
SET title = $$
              A honlapon keresgélve az innoválás tipikus problémái közt találok egy részt, ami pont azzal foglalkozik, hogy mi van, ha oktatóként elbizonytalanodom abban, hogy jó úton járok-e...
            $$,
    situation_text = $$
              A módszerek széles tárháza áll rendelkezésedre, <hedgie-b>ismerj meg minél többet,</hedgie-b> és bátran válogass közöttük. Minél <hedgie-b>több módszert ismersz, annál rugalmasabban tudsz változtatni</hedgie-b> akár tanítás közben is. Minden hallgató, minden csoport, minden időszak más, egyes módszerek az egyiknél válnak be, mások a másiknál - kísérletezz és váltogasd őket bátran! <hedgie-b>Egyszerre csak egy új módszert vezess be,</hedgie-b> és lehetőleg olyan órán, amit tartalmilag különösen szeretsz, a szíveden viseled, lubickolsz benne - így szívesen és <hedgie-b>magabiztosan fogod variálni, és a kreativitásod is beindul.</hedgie-b> Ha már egy ilyen órán begyakoroltad, könnyebben viszed tovább a többire is. <hedgie-b>Vonj be</hedgie-b> nyugodtan <hedgie-b>tapasztaltabb kollégát,</hedgie-b> vagy “beépített embert” a hallgatóid közül. Az új módszereket <hedgie-b>nem muszáj rögtön élesben kipróbálni,</hedgie-b> gyakorolhatsz magadban, kollégákkal, ismerősi körben, önkéntes hallgatókkal, vagy akár az órádon belül is, nyíltan kísérleti jelleggel. Ha elárulod a hallgatóidnak, hogy először próbálod ki, <hedgie-b>kérd a segítségüket és a visszajelzéseiket,</hedgie-b> így ez egy közös kalanddá válik, ami csak jól végződhet! <hedgie-b>Merj kísérletezni, légy felkészült, kérj támogatást,</hedgie-b> és ne légy magadhoz túl szigorú! Gyakorlat teszi a mestert!
              $$,
    next_situation_id = 69
WHERE id = 37;

-- Update situation 23 texts and following choice logic
UPDATE situations
SET title = $$Elindultak a pilot kurzusok, már egy hónap is eltelt a félévből, így elérkeztetek a fejlesztői csapat első találkozásáig...$$,
    situation_text = $$<p>Mindenki <hedgie-b>számos nehézségről számol be</hedgie-b> az új módszerek kapcsán. Számodra mi <hedgie-b>jelentette</hedgie-b> eddig a <hedgie-b>legnagyobb problémát</hedgie-b>?</p>$$
WHERE id = 23;

-- Insert cloned new situations (80-85) and their Igen/Nem choices coming from situation 23 choices
-- situation 80
INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (80, $$A csapatból az egyik kollégád ajánl egy egyetemi honlapot, ahol hasznos szakirodalmat és oktatási tanácsokat olvashatsz. Megnézed?$$,
        NULL, 'folyoso_interakcio.png', FALSE, FALSE, FALSE, 3, null);

UPDATE choices
SET next_situation_id = 80
WHERE id = 41;

INSERT INTO choices (id, situation_id, choice_text, next_situation_id)
VALUES (128, 80, 'Igen', 31);

INSERT INTO choices (id, situation_id, choice_text, next_situation_id)
VALUES (129, 80, 'Nem', 24);

-- situation 81
INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (81, $$A csapatból az egyik kollégád ajánl egy egyetemi honlapot, ahol hasznos szakirodalmat és oktatási tanácsokat olvashatsz. Megnézed?$$,
        NULL, 'folyoso_interakcio.png', FALSE, FALSE, FALSE, 3, null);

UPDATE choices
SET choice_text = $$Mindig van valamilyen technikai probléma, nem minden hallgatónál működik a wifi, a QR kód beolvasással is adódnak gondjaik.$$,
    next_situation_id = 81
WHERE id = 42;

INSERT INTO choices (id, situation_id, choice_text, next_situation_id)
VALUES (130, 81, 'Igen', 32);

INSERT INTO choices (id, situation_id, choice_text, next_situation_id)
VALUES (131, 81, 'Nem', 24);

-- situation 82
INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (82, $$A csapatból az egyik kollégád ajánl egy egyetemi honlapot, ahol hasznos szakirodalmat és oktatási tanácsokat olvashatsz. Megnézed?$$,
        NULL, 'folyoso_interakcio.png', FALSE, FALSE, FALSE, 3, null);

UPDATE choices
SET next_situation_id = 82
WHERE id = 43;

INSERT INTO choices (id, situation_id, choice_text, next_situation_id)
VALUES (132, 82, 'Igen', 33);

INSERT INTO choices (id, situation_id, choice_text, next_situation_id)
VALUES (133, 82, 'Nem', 70);

-- situation 83
INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (83, $$A csapatból az egyik kollégád ajánl egy egyetemi honlapot, ahol hasznos szakirodalmat és oktatási tanácsokat olvashatsz. Megnézed?$$,
        NULL, 'folyoso_interakcio.png', FALSE, FALSE, FALSE, 3, null);

UPDATE choices
SET choice_text = $$Elbizonytalanodtam az új módszerrel kapcsolatban, még nem érzem magam elég felkészültnek a használatához.$$,
    next_situation_id = 83
WHERE id = 44;

INSERT INTO choices (id, situation_id, choice_text, next_situation_id)
VALUES (134, 83, 'Igen', 37);

INSERT INTO choices (id, situation_id, choice_text, next_situation_id)
VALUES (135, 83, 'Nem', 69);

-- remove this choice (situation 1 does not show choices)
UPDATE choices
SET situation_id = 1
WHERE id = 45;

-- situation 84
INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (84, $$A csapatból az egyik kollégád ajánl egy egyetemi honlapot, ahol hasznos szakirodalmat és oktatási tanácsokat olvashatsz. Megnézed?$$,
        NULL, 'folyoso_interakcio.png', FALSE, FALSE, FALSE, 3, null);

UPDATE choices
SET choice_text = $$Bár a hallgatók szívesen fogadták az újításokat, mostanra már alig tesznek az órákba energiát.$$,
    next_situation_id = 84
WHERE id = 46;

INSERT INTO choices (id, situation_id, choice_text, next_situation_id)
VALUES (136, 84, 'Igen', 35);

INSERT INTO choices (id, situation_id, choice_text, next_situation_id)
VALUES (137, 84, 'Nem', 70);

-- situation 85-86
INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (85, $$A csapatból az egyik kollégád ajánl egy egyetemi honlapot, ahol hasznos szakirodalmat és oktatási tanácsokat olvashatsz. Megnézed?$$,
        NULL, 'folyoso_interakcio.png', FALSE, FALSE, FALSE, 3, null);

INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (86, $$Biztos, hogy mindig minden hallgató inaktív? Talán érdemes árnyaltabban értelmezni a problémákat.$$,
        NULL, 'hedgie_terulo.png', FALSE, FALSE, FALSE, 1, 85);

UPDATE choices
SET choice_text = $$A hallgatók sose aktívak, nem vesznek részt az új feladatokban, mindenki elutasítja az új feladatokat.$$,
    next_situation_id = 86
WHERE id = 47;

INSERT INTO choices (id, situation_id, choice_text, next_situation_id)
VALUES (138, 85, 'Igen', 36);

INSERT INTO choices (id, situation_id, choice_text, next_situation_id)
VALUES (139, 85, 'Nem', 70);

-- Update situation 69 and followings
UPDATE situations
SET title = $$Hogyan próbálod megoldani a fókuszba helyezett kihívást?$$
WHERE id = 69;

-- insert an info situation after some choices before returning to 69
INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (87, $$Talán van jobb választás, hiszen itt érdemes jobban elmélyülni a tanulásban, másoktól is tanulni!$$,
        NULL, 'hedgie_terulo.png', FALSE, FALSE, FALSE, 1, 69);

UPDATE choices
SET choice_text = $$Segítséget kérek egy tapasztalt kollégámtól.$$,
    next_situation_id = 87
WHERE id = 116;

-- remove this choice (situation 1 does not show choices)
UPDATE choices
SET situation_id = 1
WHERE id = 117;

UPDATE choices
SET choice_text = $$Megkérem egy kiváló oktató kollégám, akiről tudom, hogy fontos neki az aktív tanulás, hogy hospitálhassak egy óráján.$$
WHERE id = 118;

UPDATE choices
SET next_situation_id = 87
WHERE id = 119;

UPDATE choices
SET next_situation_id = 87
WHERE id = 120;

-- Update situation 70 and followings
UPDATE situations
SET title = $$Hogyan próbálod megoldani a fókuszba helyezett kihívást?$$
WHERE id = 70;

-- insert an info situation after some choices before returning to 70
INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (88, $$Talán van jobb választás, hiszen itt érdemes jobban elmélyülni a tanulásban, másoktól is tanulni!$$,
        NULL, 'hedgie_terulo.png', FALSE, FALSE, FALSE, 1, 70);

UPDATE choices
SET choice_text = $$Segítséget kérek egy tapasztalt kollégámtól.$$,
    next_situation_id = 88
WHERE id = 121;

-- remove this choice (situation 1 does not show choices)
UPDATE choices
SET situation_id = 1
WHERE id = 122;

UPDATE choices
SET choice_text = $$Megkérem egy kiváló oktató kollégám, akiről tudom, hogy fontos neki az aktív tanulás, hogy hospitálhassak egy óráján.$$,
    next_situation_id = 25
WHERE id = 123;

UPDATE choices
SET next_situation_id = 88
WHERE id = 125;

-- Updates from situation 39
UPDATE situations
SET title = $$Rengeteg energiát tettél a kurzusod megújításába, kezelted a felmerült problémákat. Így most végre jól működik az órád, a hallgatók és te is elégedett vagytok!$$
WHERE id = 39;

UPDATE situations
SET title = $$Úgy látszik, a rengeteg pozitív tapasztalat nem tart túl sokáig, fültanúja leszel annak, ahogyan a hallgatók egymást közt méltatlankodnak. Mitévő leszel?$$
WHERE id = 40;

UPDATE choices
SET next_situation_id = 40
WHERE id = 64;

UPDATE situations
SET title = $$A beavatkozásod nyomán elmúlt a hallgatók bizonytalansága, most sikeresen oldották meg a feladatokat. Te mondasz a hallgatóknak erről?$$
WHERE id = 41;

UPDATE situations
SET title = $$Elérkezett a fejlesztői csapat újabb megbeszélése, először átbeszéljük, ki hol tart az innovatív kurzus megvalósításában. Te hogyan számolsz be a tapasztalaidról?$$
WHERE id = 43;

UPDATE situations
SET title = $$A megbeszélésre a csapat egyik tagja, Dóra késve érkezik...$$,
    situation_text = $$<hedgie-b>– Bocs a késésért, valakinek dolgoznia is kell...</hedgie-b> Jól ismertek, alaposan és céltudatosan végzem a munkámat, de őszintén szólva, ez az <hedgie-b>“innovációsdi” kezdetektől fogva nem tetszik.</hedgie-b> Miért kellene nekünk a fejünk tetejére állva szórakoztatni az ilyen-olyan generációs hallgatókat, és az ő elégedettségükre hajtani?! Ne bohóckodjunk már! <hedgie-b>Nem élvezni kell az én óráimat, hanem odafigyelni,</hedgie-b> szorgalmasan jegyzetelni, utánaolvasni és gyakorolni! <hedgie-b>Mi</hedgie-b> is így végeztük el az egyetemet annak idején, és <hedgie-b>örültünk, hogy a legjobbaktól tanulhatunk.</hedgie-b>$$
WHERE id = 44;

UPDATE situations
SET title = $$Dóra kifakadásától nem tud a csapat megnyugodni, a megbeszélés szünetében mindenki lázasan keresi az okokat...$$,
    situation_text = $$
    <p>– Talán nem ért egyet a <hedgie-b>projekt céljával?</hedgie-b></p>
    <p>– Igazából kevésbé számít, hogy egyetért-e, az OMHV alapján a felsővezetés ezt várja tőlünk, és a mi dolgunk az, hogy <hedgie-b>kari szinten megoldást keressünk.</hedgie-b></p><br>
    <p>– Talán nem veszi komolyan?</p>
    <p>– Mivel csak <hedgie-b>most kezdett betanítani ebbe a kurzusba,</hedgie-b> talán nem tudja, hogy az <hedgie-b>elmúlt években egyre rosszabb a tárgy megítélése,</hedgie-b> és a hallgatók teljesítménye, miközben alapvető fontosságú a kurrikulumban. A társintézeteknek is fontos, hogy jobban tudjanak építeni a hallgatóink tudására, és <hedgie-b>ehhez próbálunk hozzájárulni a magunk eszközeivel.</hedgie-b></p><br>
    <p>– Talán csak <hedgie-b>bizonytalan?</hedgie-b></p>
    <p>– Erre van sok jógyakorlat a felsőoktatásban, ezeket próbáljuk megismerni és a <hedgie-b>saját lehetőségeinkhez mérten beépíteni.</hedgie-b> Apránként, <hedgie-b>kísérletezve, egymást is segítve.</hedgie-b> Nem csak a hallgatókért, hanem hogy <hedgie-b>nekünk is jelentsen sikerélményt a tanítás.</hedgie-b> És persze a megmaradásunk érdekében is.</p>$$
WHERE id = 45;

-- Update situation 46 and follow ups
UPDATE situations
SET title = $$Te mit gondolsz, érdemes tovább foglalkozni azzal, hogy Dóra nem csinált szinte semmit a közös fejlesztő munkában?$$
WHERE id = 46;

INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (89, $$Szerencsére volt valaki más a fejlesztői csapatban, aki segített Dórának. Azóta a hangulat is jobb a csapatban.$$,
        NULL, 'teamules.png', FALSE, FALSE, FALSE, 1, 48);

UPDATE choices
SET next_situation_id = 89
WHERE id = 75;

UPDATE situations
SET title = $$Mit lépsz?$$
WHERE id = 47;

INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (90, $$Dóra talán továbbra is kevésbé veszi ki a részét a munkából, de azért most már ő is figyel arra, hogy a megbeszélt módszereket beépítse az órájába. Szerencsére a csapaton belüli feszültség is csökkent emiatt.$$,
        NULL, 'teamules.png', FALSE, FALSE, FALSE, 1, 48);

UPDATE choices
SET choice_text = $$Javaslom neki, hogy lépjen ki a csapatból.$$,
    next_situation_id = 90
WHERE id = 76;

UPDATE choices
SET choice_text = $$Megkérem a fejlesztői csapat vezetőjét, hogy intézkedjen.$$,
    next_situation_id = 90
WHERE id = 77;

UPDATE choices
SET next_situation_id = 90
WHERE id = 78;

UPDATE choices
SET next_situation_id = 90
WHERE id = 79;

-- Update situation 48 and follow ups
UPDATE situations
SET title = $$Hivatalos emailt kapsz arról, hogy egy külföldi delegáció érkezik a Studentaria Karra, és ezért szükség van arra a teremre, amiben te tartod a pilot kurzusod. Mit teszel a kurzusoddal?$$,
    situation_text = NULL
WHERE id = 48;

INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (91, $$Lehet Péter, dékánhelyettestől kapsz egy emailt, amiben megköszöni, hogy ilyen rugalmasan oldottad meg a helyzetet.$$,
        NULL, 'nemzetkozi_delegacio.png', FALSE, FALSE, FALSE, 1, 49);

INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (92, $$Kár, hogy nem kezelted rugalmasabban a helyzetet. A delegáció részt vett más órán és nagyon jó visszajelzéseket adott.$$,
        NULL, 'nemzetkozi_delegacio.png', FALSE, FALSE, FALSE, 1, 49);

UPDATE choices
SET next_situation_id = 91
WHERE id IN (80, 81, 82);

UPDATE choices
SET next_situation_id = 92
WHERE id = 83;

-- Update situation 49 and follow ups
UPDATE situations
SET title = $$A fejlesztői csapat múltkori ülésen beszéltünk róla, hogy jó lenne visszajelzést kérni a hallgatóktól az oktatási újításainkról...$$,
    situation_text = $$Ez egy <hedgie-b>nehéz döntés</hedgie-b> számomra, most éppen rengeteg minden egyéb kutatási és oktatási feladatra kell figyelnem, viszont most már <hedgie-b>nem is halaszthatom tovább a döntést,</hedgie-b> tehát...$$
WHERE id = 49;

UPDATE choices
SET choice_text = $$Folytatom a kurzust, ahogy eddig, mert még sok téma maradt, amit meg kell beszélni.$$
WHERE id = 84;

UPDATE choices
SET next_situation_id = 50
WHERE id = 86;

UPDATE situations
SET title = $$Találkozik a hallgatóival a folyosón, akik elégedetlenek azzal, hogy nem kaptak semmi visszajelzést arra, hogy hogyan működött az új módszertan, mennyire voltak sikeresek.$$,
    situation_text = $$- Jó lenne hallani a <hedgie-b>tanárunk véleményét is!</hedgie-b>$$
WHERE id = 50;

INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (93, $$Szerencsére a csapat többi tagja adott visszajelzést a hallgatóknak, így a legközelebbi megbeszélésen lesz miről beszélnetek.$$,
        NULL, 'szeminariumi_terem.png', FALSE, FALSE, FALSE, 1, 54);

UPDATE choices
SET next_situation_id = 49
WHERE id = 87;

COMMIT;