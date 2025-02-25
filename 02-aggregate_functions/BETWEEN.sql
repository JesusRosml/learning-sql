-- Operador Between es un operador de comparación que se utiliza para comparar un valor con un rango de valores dados.
SELECT
	first_name,
	last_name,
	followers
FROM
	users
WHERE
	followers >= 4600 AND followers <= 4700 -- AND evalúa dos condiciones
ORDER BY followers ASC; -- Ordena por la cantidad de seguidores de menor a mayor

SELECT
	first_name,
	last_name,
	followers
FROM
	users
WHERE
	followers BETWEEN 4600 AND 4700 -- BETWEEN evalúa si un valor está dentro de un rango
ORDER BY followers DESC; -- Ordena por la cantidad de seguidores de menor a mayor