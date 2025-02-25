/*
    Los subqueries son consultas anidadas dentro de otra consulta, estas pueden afectar el rendimiento de la consulta principal,
    por lo que es importante tener en cuenta el uso de subqueries en las consultas.
*/

SELECT -- Seleccionamos todos los campos de la tabla temporal creada por la subquery
	total_users,
    domain,
    name,
    age
FROM
	( -- Esta subquery crea por así decirlo una tabla temporal
		SELECT
			COUNT(*) AS total_users,
			SUBSTRING(email, POSITION('@' IN email) + 1) AS domain,
			'Fernando' AS name,
			37 AS age
		FROM
			users
		GROUP BY
			SUBSTRING(email, POSITION('@' IN email) + 1)
		HAVING
			COUNT(*) > 1
		ORDER BY
			COUNT(*) DESC
	) AS email_domains; -- Esta es la tabla temporal creada por la subquery