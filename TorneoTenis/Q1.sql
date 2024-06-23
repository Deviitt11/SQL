-- me conecto a la base de datos
USE TorneoTenis
GO

-- seleccionar los nombres de los jugadores y los puntos totales como Total
SELECT player_name, set_1+set_2+set_3 AS TOTAL
FROM matches