-- me conecto a la base
USE Libreria
GO

-- seleccionar todos los campos, filtrar por g�nero 'Fiction'
SELECT *
FROM books
WHERE genre = 'Fiction'