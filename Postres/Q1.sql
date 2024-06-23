-- me conecto a la base
USE Postres
GO

/*
selecciona el name y el price del dessert
donde el nombre contenga 'chocolate'
*/
SELECT name, price
FROM desserts
WHERE name LIKE '%chocolate%'