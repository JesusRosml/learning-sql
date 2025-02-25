UPDATE users
SET
    name = 'Jesús' -- Este es el nuevo valor que se va a actualizar
WHERE
    name = 'Jess'; -- Condicional para actualizar el registro

-- Actualizar varios registros
UPDATE users
SET
    name = 'Jesús',
    email = 'jess@gmail.com'
WHERE
    name = 'Jess'; -- Si no se especifica el condicional, se actualizarán todos los registros