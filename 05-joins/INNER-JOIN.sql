 SELECT
 	a.name AS country,
 	b.name AS continent
FROM
	country a -- Tabla principal
INNER JOIN continent b ON a.continent = b.code -- Tabla secundaria de donde se obtendra el name del continente
ORDER BY a.name ASC;