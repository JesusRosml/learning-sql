-- Si ponemos con doble comillas el valor de la columna name no funcionará ya que hace referencia a una tabla y no a un valor.
SELECT * FROM users WHERE name = 'Alice';

/*
    El operador LIKE se usa para comparar un valor con un patrón (expresión regular).
    El patrón puede contener comodines para indicar que puede haber cualquier cantidad de caracteres en esa posición.

    Observaciones a considerar:
    - LIKE es sensible a mayúsculas y minúsculas.
    - No va a usar ciertos índices que podrían mejorar la velocidad de la consulta.
    - Puden ser un poco lentas
*/

SELECT
	*
FROM
	users
WHERE
	name LIKE 'J%'; -- EL comodín % se usa para indicar que puede haber cualquier cantidad de caracteres después de la "J".

SELECT
	*
FROM
	users
WHERE
	name LIKE '%nn'; -- EL comodín % se usa para indicar que puede haber cualquier cantidad de caracteres antes de la "nn".

SELECT
	*
FROM
	users
WHERE
	name LIKE '_inn'; -- EL comodín _ se usa para indicar que puede haber un solo caracter antes de la "inn".

SELECT
	*
FROM
	users
WHERE -- EL comodín _ se usa para indicar que puede haber un solo caracter antes de la "i" y cualquier cantidad de caracteres después de la "i".
	name LIKE '_i%';

SELECT
	*
FROM
	users
WHERE
	name LIKE '%e%'; -- EL comodín % se usa para indicar que puede haber cualquier cantidad de caracteres antes y después de la "e".