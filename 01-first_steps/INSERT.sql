INSERT INTO users -- "users" es el nombre de la tabla
    ( name ) -- "name" es el nombre de la columna
VALUES
    ( 'Jess' ), -- "Jess" es el valor que se inserta en la columna "name"
    ( 'Minn' ); -- "Minn" es el valor que se inserta en la columna "name"

-- Insertar sin especificar las columnas, recordar que se deben insertar los valores en el orden en que se crearon las columnas
INSERT INTO users
VALUES
    ( 'Jess' ),
    ( 'Minn' );