-- Retrieve all customers whose score fall in the range between 100 and 500

SELECT * 
FROM customers
WHERE score >= 100 AND score <= 500;


SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500