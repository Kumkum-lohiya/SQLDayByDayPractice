-- Get all customers who haven't placed any order
--Left Anti Joins

SELECT * 
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL


-- Get all orders without matching customers
-- Right Anti Joins

SELECT * 
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL


-- Above question using left join
SELECT * 
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id IS NULL


-- Find customers without orders and orders without customer
-- FULL ANTI JOIN

SELECT * 
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE 
	c.id IS NULL OR
	o.customer_id IS NULL;

--CHALLENGE ---

-- Get all customers along with their orders but only for customers who have placed an order
-- Without using INNER JOIN

SELECT * 
FROM customers AS c
LEFT JOIN orders AS o
ON o.customer_id = c.id
WHERE o.customer_id IS NOT NULL;


-- Generate all possible combinations of customers and orders
-- CROSS JOIN

SELECT *
FROM customers
CROSS JOIN orders;

