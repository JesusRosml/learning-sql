SELECT
	first_name,
	last_name,
	hire_date,
    -- CASE WHEN es una estructura de control que permite evaluar una condición y devolver un valor en función de ella
	CASE
		WHEN hire_date > NOW() - INTERVAL '1 year' THEN '1 año o menos' --Si es mayor a 2024 es pq tiene menos de un año
		WHEN hire_date > NOW() - INTERVAL '3 year' THEN '1 a 3 años'
		WHEN hire_date > NOW() - INTERVAL '6 year' THEN '3 a 6 años'
		ELSE '+ de 6 años'
	END AS rango_antiguedad
FROM
	employees
ORDER BY hire_date DESC;