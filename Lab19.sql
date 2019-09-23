--1.
SELECT * FROM dbo.Customers

--2.
select distinct City  
from Customers

--3.
SELECT * FROM dbo.Customers as c
WHERE c.CustomerID LIKE 'BL%'

--4.
SELECT TOP 100 * FROM dbo.Orders

--5.
SELECT * FROM dbo.Customers as c
WHERE c.PostalCode = '1010'
OR c.PostalCode = '3012'
OR c.PostalCode = '12209'
OR c.PostalCode = '05023'

--6.
SELECT * FROM dbo.Orders as o
WHERE o.ShipRegion IS NOT NULL

--7.
SELECT * FROM dbo.Customers as c
ORDER BY c.Country, c.City

--8.
INSERT INTO dbo.Customers VALUES ('LKJK','CoolDudeCo', 'Bob Knob', 'Lacky', '123 Bob Street', 'Bismark', 'ND', '49393', 'USA', '504-040-3992', '232-23233')

--9.
UPDATE dbo.Customers
SET Region = 'EuroZone'
WHERE Country = 'France'

--10.
DELETE FROM dbo.Orders
FROM   dbo.Orders INNER JOIN dbo.[Order Details] ON dbo.Orders.OrderID = dbo.[Order Details].OrderID
AND    (dbo.[Order Details].Quantity <= 1)


--11.
SELECT AVG(Quantity)
FROM dbo.[Order Details]

SELECT MAX(Quantity)
FROM dbo.[Order Details]

SELECT MIN(Quantity)
FROM dbo.[Order Details]

--12.
SELECT AVG(Quantity) AS Average, MAX(Quantity) AS Maximum, MIN(Quantity) AS Minimum
FROM dbo.[Order Details]

SELECT MAX(Quantity)
FROM dbo.[Order Details]

SELECT MIN(Quantity)
FROM dbo.[Order Details]


--13.
SELECT dbo.Orders.CustomerID FROM  dbo.Orders INNER JOIN dbo.[Order Details] ON dbo.Orders.OrderID = dbo.[Order Details].OrderID
AND    (dbo.[Order Details].OrderID = 10290)

--14.
SELECT * FROM  dbo.Orders INNER JOIN dbo.Customers ON dbo.Orders.CustomerID = dbo.Customers.CustomerID
SELECT * FROM  dbo.Orders LEFT JOIN dbo.Customers ON dbo.Orders.CustomerID = dbo.Customers.CustomerID
SELECT * FROM  dbo.Orders RIGHT JOIN dbo.Customers ON dbo.Orders.CustomerID = dbo.Customers.CustomerID

--15.
SELECT * FROM dbo.Employees as e
WHERE e.ReportsTo = NULL

--16.
SELECT * FROM dbo.Employees as e
WHERE e.ReportsTo = 2



