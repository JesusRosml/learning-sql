/*
    Advertencia: es recomendable hacer un select con la condición antes de hacer un delete para asegurarse de que se
    eliminarán los registros correctos.

    Si se ejecuta un delete sin where, se eliminarán todos los registros de la tabla.

    Debemos asegurarnos de que el autocommit esté desactivado para poder hacer un rollback en caso de que sea necesario.
 */

DELETE FROM users -- Sirve para eliminar registros de una tabla
WHERE
	name = 'minn';