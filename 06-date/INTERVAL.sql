-- año mes dia
SELECT
	MAX( hire_date ) AS fecha_maxima,
	MAX( hire_date ) + INTERVAL '1 days' AS sumando_dia,
	MAX( hire_date ) + INTERVAL '1 month' AS sumando_mes,
	MAX( hire_date ) + INTERVAL '1 year' AS sumando_año,
	MAX( hire_date ) + INTERVAL '1 years' + INTERVAL '1 month' + INTERVAL '1 day' AS sumando_año_mes_dia,
	-- Now sirve para obtener la fecha actual y hora actual del sistema
	DATE_PART( 'year', NOW() ) AS obteniendo_fecha,
	DATE_PART( 'days', NOW() ) AS obteniendo_dia,
    -- útil cuando necesitas construir intervalos de tiempo de manera dinámica y precisa.
	MAKE_INTERVAL( YEARS := DATE_PART( 'year', NOW() )::integer ),
	MAX( hire_date ) + MAKE_INTERVAL( YEARS := 23 ) -- Sumando 23 años de manera dinamica
FROM
	employees;