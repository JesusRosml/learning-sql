CREATE
OR REPLACE FUNCTION sayHello (user_name VARCHAR) -- Nombre de la función
RETURNS VARCHAR -- Tipo de retorno
AS $$
BEGIN
	RETURN 'Hola ' || user_name;
END;
$$ LANGUAGE plpgsql;

-- Lenguaje en el que esta escrito

CREATE
OR REPLACE FUNCTION comment_replies (id INTEGER) RETURNS json AS $$
DECLARE result json; -- En esta parte se crean las variables
	BEGIN
		SELECT
			JSON_AGG( JSON_BUILD_OBJECT(
			'user', "comments".user_id,
			'comment', "comments"."content"
			)) into result -- De esta manera insertamos el resultado de este query en la variable result
		FROM "comments" WHERE comment_parent_id = id;

		RETURN result;
	END;
$$ LANGUAGE plpgsql;

SELECT comment_replies( 1 );

SELECT
	a.*,
	comment_replies( a.post_id ) AS replies
FROM
	"comments" a
WHERE comment_parent_id IS NULL;