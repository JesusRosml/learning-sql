/*
    El FULL OUTER JOIN combina todas las filas de dos tablas y devuelve todas las filas, ya sea que haya coincidencia
    o no, rellenando con NULL donde no hay coincidencias. Es una herramienta poderosa para obtener una vista completa
    de los datos en dos tablas.
*/

SELECT
	a.name,
	a.continent AS continentCode,
	b.name AS continentName
FROM country a
FULL OUTER JOIN continent b
ON a.continent = b.code
ORDER BY a.name ASC;