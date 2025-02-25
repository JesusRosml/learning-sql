
-- lenguage
-- ¿Cuál es el idioma (y código del idioma) oficial más hablado por diferentes países en Europa?

SELECT COUNT(*), b.languagecode, b.language FROM country a -- Solucion del maestro
INNER JOIN countrylanguage b ON a.code = b.countrycode
WHERE a.continent = 5 AND b.isofficial = true
GROUP BY b.languagecode, b."language"
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Listado de todos los países cuyo idioma oficial es el más hablado de Europa
-- (no hacer subquery, tomar el código anterior)
SELECT * FROM country a
INNER JOIN countrylanguage b ON a.code = b.countrycode
WHERE ( a.continent = 5 ) AND ( b.isofficial = true ) AND ( b.languagecode = 101 );
