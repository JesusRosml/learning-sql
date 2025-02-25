/*
    Los indices nos ayudan a mejorar la velocidad de las consultas, los indices unicos mejoran aun mas la velocidad
    que los indices que pueden tener duplicados, sin embargo, ambos mejoran enormente la velocidad de las consultas.

    Otro punto a tomar en cuenta es que los indices toman cierto peso en la base de datos.

    Cuando colocamos indices en una tabla que ya fue creada y tiene datos puede tardar un poco en crear el indice ya que
    tiene que recorrer toda la tabla para crear el indice.

    Aprender mas:
    https://www.postgresql.org/docs/7.1/indices.html
*/

/*
    Es importante que los nombres de los indices sean descriptivos para saber a que tabla, columna y tipo de indice pertenece.
    En este caso el indice se llama "unique_country_name" y pertenece a la tabla "country" y es un indice unico.

    Esto ayuda a indicarle a la base de datos que el indie es unico por lo que debe devolver el primer valor que encuentre y no seguir buscando.

    Nota: Podemos colocar mas de una columna en un indice, esto se hace separando las columnas por comas.
*/
CREATE UNIQUE INDEX "unique_country_name" ON country (
	name
);

/*
    De esta manera creamos un indice que no es unico, es decir, puede tener duplicados.
    En este caso el indice se llama "country_continent" y pertenece a la tabla "country" y es un indice no unico.
*/

CREATE INDEX "country_continent" ON country (
	continent
);

-- Creación de un indice unico compuesto

CREATE UNIQUE INDEX "unique_name_countrycode_district" ON city (
	name, countrycode, district
);