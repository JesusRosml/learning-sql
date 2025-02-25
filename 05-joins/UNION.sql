-- Une dos resultados diferentes en uno mismo pero estos deben tener el mismo numero de columnas
-- las columnas deben tener el mismo tipo de dato
SELECT * FROM continent WHERE name LIKE '%America%'
UNION
SELECT * FROM continent WHERE code in (3,5)
ORDER BY name ASC;