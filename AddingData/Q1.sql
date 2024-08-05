/*
There are new employees that need to be added to the Employees table.

Here is their data:

Firstname: Wang

Lastname: Lee

Salary: 1900

Firstname: Greta

Lastname: Wu

Salary: 1200

The Employees table has an identity column called id, which is set to AUTO_INCREMENT.

Add the data to the table, then select the id, firstname, lastname and salary columns 
sorted by the id column in descending order.
*/

INSERT INTO Employees (firstname, lastname, salary) VALUES
('Wang', 'Lee', 1900);

INSERT INTO Employees (firstname, lastname, salary) VALUES
('Greta', 'Wu', 1200);

SELECT id, firstname, lastname, salary
FROM Employees
ORDER BY id DESC;