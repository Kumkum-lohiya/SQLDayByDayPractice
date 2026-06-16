-- Combine the data from employees and customers into one table
-- UNION set operator --
SELECT 
	FirstName,
	LastName
FROM Sales.Customers
UNION
SELECT 
	FirstName,
	LastName
FROM Sales.Employees;


-- Combine the data from employees and customers into one table, including duplicates
-- UNION ALL set operator --

SELECT 
	FirstName,
	LastName
FROM Sales.Customers
UNION ALL
SELECT 
	FirstName,
	LastName
FROM Sales.Employees;


-- Find employees who are not customers at the same time
-- EXCEPT set operator --

SELECT 
	FirstName,
	LastName
FROM Sales.Employees
EXCEPT
SELECT 
	FirstName,
	LastName
FROM Sales.Customers;


-- Find the employees who are also customers
-- INTERSECT set operator --

SELECT 
	FirstName,
	LastName
FROM Sales.Employees
INTERSECT
SELECT 
	FirstName,
	LastName
FROM Sales.Customers;


-- orders are stored in seperate tables(orders and order Archieve).
-- combine all orders into one report without duplicates
-- UNION use case example

SELECT 
	   'Orders' AS SourceTable,
	   [OrderID]
	  ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM Sales.Orders
UNION
SELECT 
	  'OrdersArchieve' AS SourceTable,
	   [OrderID]
	  ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM Sales.OrdersArchive
Order BY OrderID
