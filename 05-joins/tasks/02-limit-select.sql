-- País con mas ciudades
-- Campos: total de ciudades y el nombre del país
-- Usar INNER JOIN

SELECT
	COUNT(*) AS total,
	b.name
FROM city a
INNER JOIN country b ON a.countrycode = b.code
GROUP BY b.name
ORDER BY total DESC
LIMIT 1; -- De esta manera hacemos un limit del select