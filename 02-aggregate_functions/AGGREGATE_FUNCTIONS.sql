/*
    COUNT: Cuenta todos los registros
    MIN: Devuelve el valor minimo de una columna pero estos valores pueden repetirse mas de una vez
    MAX: Devuelve el valor maximo de una columna
    ROUND: Redondea un numero
    AVG: Saca el promedio de los seguidores
    SUM: Suma todos los valores de una columna
*/

SELECT
	COUNT(*) AS total_users,
	MIN( followers ) AS min_followers,
	MAX( followers ) AS max_followers,
	ROUND( AVG( followers ) ) as avg_followers,
	SUM( followers ) / COUNT( * ) AS avg_manual
FROM
	users;