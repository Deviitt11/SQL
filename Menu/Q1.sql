-- me conecto a la base
USE Menu
GO

-- extraer los primeros 4 registros
SELECT TOP 4 *
FROM menu

-- en SQL Server no deja as�
/*
SELECT *
FROM menu
LIMIT 4
*/