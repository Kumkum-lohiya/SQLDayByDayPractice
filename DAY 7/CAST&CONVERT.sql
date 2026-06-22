-- CONVERT() --
SELECT 
CONVERT(INT,'123') AS [String to Int CONVERT],
CONVERT(DATE ,'2026-06-06') AS [String to Date CONVERT],
CreationTime,
CONVERT(DATE , CreationTime) AS [Datetime to Date CONVERT],
CONVERT(VARCHAR , CreationTime,32) AS [USA Std. Style:32],
CONVERT(VARCHAR,CreationTime,34) AS [EURO Std. Style:34]
FROM Sales.Orders


-- CAST() --
SELECT 
CAST('123' AS INT) AS [String to Int],
CAST(123 AS VARCHAR) AS [Int to String],
CAST('2026-06-06' AS DATE) AS [String to Date],
CAST('2026-06-06' AS DATETIME2) AS [String to Datetime],
CreationTime,
CAST(CreationTime AS DATE) AS [Datetime to Date]
FROM Sales.Orders