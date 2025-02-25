/*
    HAVING se usa para filtrar los resultados de una consulta que contiene una cláusula GROUP BY.
 */

SELECT
	count(*),
	country
FROM
	users
GROUP BY
	country
HAVING -- Se debe colocar después de GROUP BY y antes de ORDER BY
	COUNT(*) BETWEEN 1 AND 5
ORDER BY
	COUNT(*) DESC;