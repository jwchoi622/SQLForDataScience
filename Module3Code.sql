-- Q1) 
-- Using a subquery, find the names of all the tracks for the album "Californication".
SELECT Tracks.Name
FROM Albums
LEFT JOIN Tracks
ON Albums.AlbumId = Tracks.AlbumId
WHERE Albums.Title = 'Californication';

-- Q2) 
-- Find the total number of invoices for each customer 
-- along with the customer's full name, city and email.
SELECT COUNT(i.CustomerId),
c.FirstName,
c.LastName,
c.City,
c.Email
FROM Customers c
INNER JOIN Invoices i
ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId;

-- Q3) 
-- Retrieve the track name, album, artist, and trackID for all the albums.
SELECT t.Name,
a.Title,
a.ArtistId,
t.TrackId
FROM Albums a
INNER JOIN Tracks t 
ON a.AlbumId = t.AlbumId
WHERE a.Title = 'For Those About To Rock We Salute You';

-- Q4) 
-- Retrieve a list with the managers last name, and the last 
-- name of the employees who report to him or her.
SELECT m.LastName AS Manager, 
e.LastName AS Employee
FROM Employees e INNER JOIN Employees m
ON e.ReportsTo = m.EmployeeID

-- Q5) 
-- Find the name and ID of the artists who do not have albums.
SELECT Artists.Name,
Artists.ArtistId
FROM Artists
LEFT JOIN Albums
ON Artists.ArtistId = Albums.ArtistId
WHERE Albums.Title IS NULL;

-- Q6) 
-- Use a UNION to create a list of all the employee's & 
-- customer's first names and last names ordered by the last
-- name in descending order.
SELECT FirstName, LastName FROM Employees
UNION
SELECT FirstName, LastName FROM Customers
ORDER BY LastName DESC;

-- Q7) 
-- See if there are any customers who have a different city
-- listed in their billing city versus their customer city.
SELECT *
FROM Customers C
INNER JOIN Invoices I
ON C.CustomerId = I.CustomerId
WHERE C.City != I.BillingCity;