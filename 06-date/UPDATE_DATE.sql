-- Saber cuantos años de diferencia existe entre una fecha y la otra
SELECT
	hire_date,
	MAKE_INTERVAL( YEARS := 2025 - EXTRACT( YEARS FROM hire_date )::INTEGER ) AS MANUAL,
	MAKE_INTERVAL( YEARS := DATE_PART( 'years', CURRENT_DATE )::INTEGER - EXTRACT( YEARS FROM hire_date )::INTEGER ) AS COMPUTED
FROM
	employees
ORDER BY hire_date DESC;


-- Sumar 25 años
SELECT
	hire_date AS date_init,
	employee_id,
	CONCAT( first_name, ' ', last_name ) AS name_employee,
	hire_date + MAKE_INTERVAL( YEARS := 25 ) AS difference_date,
	SUBSTRING( ( hire_date + MAKE_INTERVAL( YEARS := 25 ) )::TEXT FROM 1 FOR 10 ) AS trimmed_difference_date
FROM
	employees;


UPDATE employees
SET
	hire_date = SUBSTRING( ( hire_date + MAKE_INTERVAL( YEARS := 25 ) )::TEXT FROM 1 FOR 10 )::DATE;


--SOLUCION DE FERNANDO HERRERA
UPDATE employees
SET
	hire_date = hire_date + INTERVAL '23 years';