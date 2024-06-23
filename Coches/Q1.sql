-- me conecto a la base
USE Coches
GO

/*
selecciona make,model y price per day del coche
donde el price per day  sea menor o igual a $100
*/
SELECT make, model, price_per_day
FROM cars
WHERE price_per_day <= 100
