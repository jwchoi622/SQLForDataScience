
-- Q1
-- Retrieve all records from the Employees table.

SELECT * 
FROM employees;

-- Q2
-- Retrieve FirstName, LastName, Birthdate, Address, City, and State from the Employees table.

SELECT FirstName,
LastName, 
Birthdate,
Address,
City,
State 
FROM employees;

-- Q3
-- Retrieve all the columns from the Tracks table, but only return 20 rows. 

SELECT * 
FROM Tracks
LIMIT 20;