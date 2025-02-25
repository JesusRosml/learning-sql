SELECT * FROM continent;

-- se recomienda usar alias mas descriptivos cuando son mas de 2 tablas
SELECT DISTINCT d."name", c."name" AS continent FROM countrylanguage a
INNER JOIN country b ON a.countrycode = b.code
INNER JOIN continent c ON b.continent = c.code
INNER JOIN language d ON a.languagecode = d.code
WHERE a.isofficial = true;

SELECT * FROM countrylanguage;

-- ¿Cuantos idiomas oficiales se hablan por continente?
SELECT COUNT(*), continent FROM (
	SELECT DISTINCT a."language", c."name" AS continent FROM countrylanguage a
	INNER JOIN country b ON a.countrycode = b.code
	INNER JOIN continent c ON b.continent = c.code
	WHERE a.isofficial = true
) AS totales
GROUP BY continent;