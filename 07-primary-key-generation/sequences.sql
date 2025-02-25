-- Secuencia de numeros: 1,2, 3,4 etc
CREATE SEQUENCE user_sequence;

-- Eliminar secuencia
DROP SEQUENCE user_sequence;

/*
	De esta manera se obtiene el siguiente valor de la secuencia, solo hay que tener en cuenta que con tan solo
	usar un select de la secuencia este ya no volvera a ser mostrado.
*/

SELECT NEXTVAL('user_sequence');

-- Obtener el valor de la secuencia actual sin reservarlo
SELECT CURRVAL('user_sequence');

CREATE TABLE users6 (
	"user_id" INTEGER PRIMARY KEY DEFAULT nextval('user_sequence'),
	"username" VARCHAR( 100 )
);