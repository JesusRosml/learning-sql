-- De esta manera se crea una clave primaria compuesta en la tabla countrylanguage
ALTER TABLE countrylanguage
ADD PRIMARY KEY (countrycode, language);

-- De esta manera se crea una clave primaria
ALTER TABLE country
ADD PRIMARY KEY ( code );