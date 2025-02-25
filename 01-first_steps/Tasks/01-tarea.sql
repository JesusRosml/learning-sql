-- 1. Ver todos los registros
SELECT * FROM users;

-- 2. Ver el registro cuyo id sea igual a 10
SELECT * FROM users WHERE id = 10;

-- 3. Quiero todos los registros que cuyo primer nombre sea Jim (engañosa)
SELECT * FROM users WHERE name LIKE 'Jim %';

-- 4. Todos los registros cuyo segundo nombre es Alexander
SELECT * FROM USERS WHERE name LIKE '% Alexander';

-- 5. Cambiar el nombre del registro con id = 1, por tu nombre Ej:'Fernando Herrera'
SELECT * FROM users WHERE id = 1;

UPDATE users
SET
	name = 'Jesús'
WHERE id = 1;

-- 6. Borrar el último registro de la tabla
SELECT
	MAX( id ) -- MAX devuelve el valor máximo de una columna
FROM
	users;

-- De esta manera ejecutamos subconsultas
DELETE FROM users
WHERE
	id = (
		SELECT
			MAX(id)
		FROM
			users
	);