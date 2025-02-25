-- Tarea: Obtener el total de países por continente.
-- Count Union - Tarea
-- Total |  Continent
-- 5	  | Antarctica
-- 28	  | Oceania
-- 46	  | Europe
-- 51	  | America -- Todo lo que coincida con america
-- 51	  | Asia
-- 58	  | Africa

-- Mi propia solución

(SELECT
	 COUNT(*) AS total,
	 b.name AS continent
 FROM country a
 INNER JOIN continent b ON a.continent = b.code
 WHERE b.code NOT IN ( 4, 6, 8 ) -- Selecciona los que no se encuentran en la lista
 GROUP BY b.name
)
UNION
(
	SELECT
		COUNT(*) AS total,
		'America' AS continent
	FROM country a
	INNER JOIN continent b ON a.continent = b.code
	WHERE b.code in ( 4, 6, 8 ) -- Selecciona los que se encuentren en la lista
)
 ORDER BY total ASC;