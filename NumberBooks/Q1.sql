/*
You are working on the library database, which contains the Books and Authors tables.

Columns of the Books table: id, name, year, author_id.

Columns of the Authors table: id, name.

 
Write a query to get the author names and the number of books they have in the Books table.

Note that some authors do not have any books associated with them. 
In this case, the result needs to include their names and have 0 as the count. 
The count column should be called books in the result.
*/

SELECT Authors.name AS name, COUNT(Books.id) AS books
FROM Authors LEFT JOIN Books
ON Authors.id = Books.author_id
GROUP BY Authors.name
ORDER BY books DESC;