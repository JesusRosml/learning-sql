-- De esta manera se crea una llave foránea en una tabla, esto crea una relación entre dos tablas.
ALTER TABLE city
ADD CONSTRAINT fk_country_code -- Nombre de la llave foránea, se recomienda empezar con fk_
FOREIGN KEY (countrycode) -- Columna de la tabla actual que es la llave foránea
REFERENCES country (code); -- Tabla y columna a la que se hace referencia