-- Retrieve all customers either Germany OR USA

SELECT * 
FROM customers
WHERE country = 'USA' OR country = 'Germany';


SELECT * 
FROM customers
WHERE country IN ('Germany' , 'USA')