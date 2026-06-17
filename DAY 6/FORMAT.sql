-- FORMATTING AND CASTING --
-- FORMAT() Function --
SELECT 
OrderID,
CreationTime,
FORMAT(CreationTime, 'MM-dd-yyyy') USA_Format,
FORMAT(CreationTime, 'dd-MM-yyyy') EURO_Format,
FORMAT(CreationTime, 'dd') dd,
FORMAT(CreationTime, 'ddd') ddd,
FORMAT(CreationTime, 'dddd') dddd,
FORMAT(CreationTime, 'MM') MM,
FORMAT(CreationTime, 'MMM') MMM,
FORMAT(CreationTime, 'MMMM') MMMM
FROM Sales.Orders

/*TASK 1 :- Show creationTime using the following Format:
Day Wed Jan Q1 2025 12:34:56 PM */

SELECT 
OrderID,
CreationTime,
'Day ' + FORMAT(CreationTime , 'ddd MMM') +
' Q' +DATENAME(QUARTER,CreationTime) + ' ' +
FORMAT(CreationTime,'yyyy hh:mm:ss:tt') AS CustomeFormat
FROM Sales.Orders 

-- DATA AGGREGATION --
SELECT 
FORMAT(OrderDate,'MMM yy') OrderDate,
COUNT(*)
FROM Sales.Orders
GROUP BY FORMAT(OrderDate, 'MMM yy')