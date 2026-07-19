BEGIN;

-- Update situation 1: Start message
UPDATE situations
SET situation_text = $$Elindul a közös munkátok!$$
WHERE id = 1;

-- Update situation 2: Online quiz evaluation data
UPDATE situations
SET title = $$A fejlesztői csapatotok megkapja az online kvízek bevezetésével kapcsolatos hallgatói visszajelzéseket$$,
    situation_text = $$<p>Az online kvíz módszerét alkalmazó kurzusokat a hallgatók az <b>egyetemi OMHV</b> rendszerben a következőképpen értékelték:</p>
<ul>
  <li>Az oktató <b>módszerhasználatával</b> elégedett az előző három év átlaga alapján a kitöltők 53%, az online kvíz bevezetése óta 34%.</li>
  <li>A kurzus <b>interaktivitással</b> elégedett az előző három év átlaga alapján a kitöltők 13%, az online kvíz bevezetése óta 21%.</li>
  <li>A kurzus <b>oktatóját ajánlaná-e</b> hallgatótársainak: az előző három év átlaga alapján a kitöltők 69%, az online kvíz bevezetése óta 61%.</li>
</ul>
<p>A hallgatóktól kapott jellegzetes szöveges válaszok:</p>
<p>„Az <b>elején fun volt</b> a kvízek használata"<br>
„Hiába mások a kérdések, tök <b>unalmas</b> mindig ugyanazt a játékot gyúrni."<br>
„<b>Kínos</b> volt a technikai hiba hosszas keresgélése, miközben rengeteg dolgunk lett volna. Amatőrök."<br>
„A <b>kvízből keveset tanulunk</b>, mert képtelen az alapfogalmaknál mélyebbre menni."<br>
„Idegesít az időmérés, <b>nem szeretek kapkodni</b>, stresszel. Szerintem ez nem lóverseny. Vagy mégis?"</p>$$
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
    situation_text = $$<p>Az érintett kurzusok hallgatóinak 72%-a (N=223) töltötte ki a kérdőívet. A megkérdezett hallgatók 34%-a jeleölte meg azt, hogy az online kvízekkel kapcsolatos <b>élegedettségé folyamatosan csökkent</b> a félév során. A nyitott kérdéses indoklásból kiderült, hogy a módszer játékos, interaktív jellege, továbbá a verseny éléményszérusége kezdetben motiválta a hallgatókat, hogy minél jobban agyekezzenzek megtértenini a tananyagot. Később viszont a <b>kvízek monotonná és egyre unalmasabbá váltak</b>, mivel sok oktató alatt ezt használta.</p>
<p>A hallgatók 64%-a úgy vélte, hogy a <b>kvíz inkább csak felszines aktivitást generál</b>, nem ösztönzi a véleménylkaotást, kreativitást és problémamegoldást. 82% szerint <b>nem képes megjeleniteni az anyag mélyebb összefüggéseit</b>, amelyek a kurzus késöbbi résziban kulcsfontosságúva váltak. 59% gyakrabban dolgozna kicscsoportban az egyéni válaszadás helyett. A válaszadók 94%-a nem vetné el a digitális módszerek alkalmazásét, és 87% <b>többféle módszert felválltya alkalmazna</b> a kurzusok során. Összesen 14 különféle módszerre és eszközre érkezett javaslat.</p>$$
WHERE id = 7;

-- Update situation 8: Expert consultation results
UPDATE situations
SET title = $$A külső szakértővel való beszélgetés eredményei$$,
    situation_text = $$<p>A szakértői megebeszélés során világossá vált számunkra, hogy a hallgatói <b>aktivitás növeléséhez a kurzus strukturájának átgondolása és az ehhez jól illeszkedő digitális eszközök bevzetése szükséges</b>. A szakértő segítségével sikerült azonosítani a legnagyobb kihívásokat, mint a hallgatói értéktlenséget és a passzív hozzáállást.</p>
<p><b>A szakértő javasolt</b> néhány konkrét megoldási lehetőséget is, például a <b>blended tanulási formát</b>, mint amelyen a <b>fordított osztályterem</b>, vagy az <b>online csoportmunkát</b> és az ehhez kötődő osztálytermi visszajelzéseket. A szakértő továbbá javasolta, hogy bármeyik új módszer, eszköz kipróbálásakor érdemes <b>visszajelzést kérni a hallgatóktól</b> és ahol lehet, már menet közben finomhangolni a megoldásokat.</p>$$
WHERE id = 8;

-- Update situation 9: Student focus group results
UPDATE situations
SET title = $$Hallgatói fókuszcsoport eredményei$$,
    situation_text = $$<p>A fókuszcsoportos interjúba vegyesen 1-2 hallgatót vontunk be a Studentia Kar szakjairól, alap- és mesterképzésről is. A beszélgetésekben a hallgatók elmondták, hogy az <b>első hetekben érdekesnek és izgalmasnak találták az online kvízeket</b>, elsősorban a Mekpit használatát. A játékos kvízek, a versenyhelyzet és az azonnali visszajelzés feldobta az órákat. Így éreztek, hogy az <b>online kvíz segiti őket a tananyag atlátásában</b>. Különösen szerettek kiscsoportban részt venni a kvízekben.</p>
<p>Ugyanakkor <b>idővel egyre fárasztóbbá vált számukra</b> a sok online kvíz használata. Ráadásul a módszer <b>inkább csak felszines aktivitást generált</b>, de nem ösztönözte őket arra, hogy valóban elmélydjenek a tananyagban. A fókuszcsoport eredményei alapján a Mekpit kvíz kiegészítése más módszerekkel és <b>valós szituációk beemelésével erősitheti</b>, hogy hallgatóként érdekelődjnek és <b>el is mélyjuljynek a tanulásban</b>.</p>$$
WHERE id = 9;

-- Update situation 10: Joint teacher reflection and consultation results
UPDATE situations
SET title = $$Közös oktatói reflexió, egyeztetés eredményei$$,
    situation_text = $$<p>A közös oktatói reflektálásra minden szakról érkezett 1-1 oktató. A legtöbb oktató egyetértett abban, hogy a hallgatók kezdetben szívesen vették részt a játékban, különösen a versenyelemet és a valós idejű visszajelzés miatt. Többen kiemeltek, hogy a <b>módszer teljesítménykózpontú viselkedésre ösztönözte a hallgatókat</b>, akik gyakran a jó pontszám elérésére törekedtek anélkül, hogy teljes mértékben megértették volna a mögöttes tartalmat. Sokan úgy éreztek, hogy míg a kvízek alapvető ismeretek átismétlésére hatékonyak voltak, az <b>elmélyültebb tanulás, a kritikus gondolkodás vagy az értelmes vita előségitésére kevésé</b>.</p>
<p>Bár az oktatók nyitottak maradtak a digitális és interaktív eszközökre, javasol ták, hogy a <b>Mekpit-t elsősorban bemelgitésére, formatív ellenörzésre vagy kulcsfogalmak attekintésére használják</b>. A közös ülésén számos gyakorlati javaslat is felszínre került, például a kvíz kombinálása csoportos feladatokkal, esetmegbeszélésékkel vagy projektmunkával a mélyebb megértés támogatása érdekében.</p>$$
WHERE id = 10;

-- Update situation 11
UPDATE situations
SET title = $$Fontos eredményeket kaptunk, de jó lenne még újabb vizsgálatot is végezni a hallgatói tapasztalatok feltárásához!$$
WHERE id = 11;

-- Add new situation referred from choice 11
INSERT INTO situations (id, title, situation_text, illustration, is_starter, is_halftime, is_terminal, situation_type, next_situation_id)
VALUES (71, 'Még egy felmérés valószínűleg már nem hozna teljesen új szempontokat, viszont csökkenti az energiád! Figyeld a továbbiakban is a pontjaid változását!', null, 'hedgie_terulo.png', FALSE, FALSE, FALSE, 1, 11);

UPDATE choices SET next_situation_id = 71 WHERE id = 8;

COMMIT;
