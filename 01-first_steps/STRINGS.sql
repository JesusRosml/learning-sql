-- Nota: Las funciones se deben escribir en mayúsculas para indicar que son palabras reservadas de SQL

SELECT
	name,
	UPPER( name ) AS name_upper, -- Convierte el string en mayúscula pero no modifica el original
	LOWER( name ) AS name_lower, -- Convierte el string en minúscula
    LENGTH( name ) AS length_name, -- Devuelve la longitud del string
    ( 20 * 2 ) as CONSTANTE, -- Podemos crear un valor e incluso hacer operaciones matemáticas
    CONCAT( id, ' - ', name ) AS name_id, -- Concatena strings
    'Hola ' || name AS saludo, -- || Concatena strings
FROM
	users;

SELECT
	name,
	SUBSTRING( name, 0, 5 ), -- Corta un string y lo devuelve
	POSITION( ' ' in name ), -- Devuelve la pocisión de un string ( Si devuelve 0 es por que no lo encontro )
	SUBSTRING( name, 0, POSITION( ' ' in name ) ) AS first_name,
	SUBSTRING( name, POSITION( ' ' in name ) + 1 ) AS second_name
FROM
	users;

/*
    Pasar el primer nombre en la columna first_name y pasar el apellido en la columna last_name, se coloca sin where
    para que se aplique a todos los registros
*/

UPDATE users
SET
	first_name = SUBSTRING( name, 0, POSITION( ' ' in name ) ),
	last_name = SUBSTRING( name, POSITION( ' ' in name ) + 1 );