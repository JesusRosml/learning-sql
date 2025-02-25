/*
    GROUP BY se usa para agrupar filas que tienen el mismo valor en una o más columnas.
*/

SELECT
	COUNT(*),
	followers
FROM
	users
WHERE followers = 4 OR followers = 4999 -- OR sirve para que se cumpla una u otra condición
GROUP BY followers; -- Usamos Gropu By cuando usamos funciones de agregación

SELECT
	count(*),
	followers
FROM
	users
WHERE
	followers BETWEEN 4500 AND 4999
GROUP BY
	followers ASC; -- ASC ordena de menor a mayor