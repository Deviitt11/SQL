/*
You are working with a library database that stores data on books.

The Books table has the columns id, name, year, author_id.

The author_id column connects to the Authors table, which stores the id, 
name columns for the book authors.

You need to select all the books with their authors, ordered by the author name alphabetically, 
then by the year in ascending order.

The result set should contain only 3 columns: the book name, year and its author 
(name the column author). 
*/

SELECT
    b.name AS name, b.year,
    (SELECT a.name FROM Authors a WHERE a.id = b.author_id) AS author
FROM Books b
ORDER BY author ASC, b.year ASC;
