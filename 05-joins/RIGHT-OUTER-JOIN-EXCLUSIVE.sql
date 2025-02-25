/*
    Right outer join exclusive sirve para obtener los registros de la tabla de la derecha que no tienen correspondencia
    en la tabla de la izquierda
*/

SELECT
	a.name,
	a.continent AS continentCode,
	b.name
FROM country a
RIGHT JOIN continent b
ON a.continent = b.code
WHERE a.continent IS NULL;