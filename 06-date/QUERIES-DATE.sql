-- Selecciona todos los empleados que fueron contratados después del 5 de febrero de 1998.
SELECT * FROM employees
WHERE hire_date > DATE('1998-02-05') -- Se coloca DATE() para que el motor de base de datos interprete la cadena como una fecha.
ORDER BY hire_date DESC;

SELECT
	MAX(hire_date) AS empleado_mas_nuevo -- Selecciona la fecha más reciente de contratación.
FROM
	employees;

SELECT
	*
FROM
	employees
WHERE hire_date BETWEEN '1990-01-01' AND '2000-01-01' --Busca empleados entre este rango de fechas
ORDER BY hire_date DESC;