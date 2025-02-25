-- Check sirve para validar que los datos que se insertan en una tabla cumplan con ciertas condiciones
ALTER TABLE country ADD CHECK(
	surfacearea >= 0
);

SELECT * FROM country;

-- Se puede agregar más de una condición
ALTER TABLE country ADD CHECK (
	( continent = 'Asia'::text ) OR
	( continent = 'South America'::text ) OR
	( continent = 'North America'::text ) OR
	( continent = 'Oceania'::text ) OR
	( continent = 'Antarctica'::text ) OR
	( continent = 'Africa'::text ) OR
	( continent = 'Europe'::text )
);

-- De esta manera eliminamos la restricción (constraint)
ALTER TABLE country
DROP CONSTRAINT "country_continent_check";