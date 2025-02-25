CREATE TABLES users (
    -- COLUMNA (name) - TIPO DE DATO (VARCHAR) - RESTRICCIONES (NOT NULL, UNIQUE)
    id serial, -- SERIAL: numero autoincrementable
    name VARCHAR( 100 ) NOT NULL UNIQUE
);