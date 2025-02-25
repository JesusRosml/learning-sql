(SELECT
	COUNT(*) AS total_country, -- Alias para que se pueda usar el order by
	b.name
FROM country a
INNER JOIN continent b ON a.continent = b.code
GROUP BY b.name)
UNION
(SELECT
	0 AS total_country, -- Alias para que se pueda usar el order by
	b.name
FROM country a
RIGHT JOIN continent b ON a.continent = b.code
WHERE a.continent IS NULL
GROUP BY b.name)
ORDER BY total_country;