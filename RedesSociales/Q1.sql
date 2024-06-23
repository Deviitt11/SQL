/*
tabla: posts
extrae el número total de likes para cada tema
*/
USE RedesSociales
GO

SELECT topic, SUM(likes)
FROM posts
GROUP BY topic;