-- Calculations --
-- DATEADD() --

SELECT 
OrderID,
OrderDate,
DATEADD(DAY, -10 , OrderDate) AS Tendaysbefore,
DATEADD(MONTH, 3, OrderDate) AS ThreeMonthsLater,
DATEADD(YEAR, 2, OrderDate) AS TwoYearLater
FROM Sales.Orders