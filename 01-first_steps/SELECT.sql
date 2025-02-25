-- Selecciona los usuarios que tinenen acceso a la  base de datos
SELECT * FROM user;

SELECT
    * -- Selección de todas las columnas
FROM
    users; -- Nombre de la tabla

-- Limitar la cantidad de registros a mostrar
SELECT
    *
FROM
    users
LIMIT
    1; -- Limitar a un registro

-- Limitar la cantidad de registros a mostrar y saltar los primeros registros
SELECT
    *
FROM
    users
LIMIT
    1
OFFSET
    1; -- Saltar el primer registro