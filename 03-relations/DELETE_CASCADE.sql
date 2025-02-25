-- Para hacer una eliminación en cascada es la siguiente
ALTER TABLE city
ADD CONSTRAINT fk_country_code
FOREIGN KEY (countrycode)
REFERENCES country (code)
ON DELETE CASCADE; -- Se agrega esta línea para que al eliminar un país se eliminen todas las ciudades relacionadas