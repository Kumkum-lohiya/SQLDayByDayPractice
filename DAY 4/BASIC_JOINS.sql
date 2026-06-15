-- Retrieve all data from customers and orders as seperate results
-- No JOIN
SELECT * 
FROM customers;

SELECT * 
FROM orders;


-- Get all customers along with their orders but only for customers who have placed 
-- an order

-- INNER JOIN

SELECT 
	customers.id,
	customers.first_name,
	orders.order_id,
	orders.sales
FROM customers
INNER JOIN orders 
ON customers.id = orders.customer_id;


-- Get all customers along with their orders,
-- including those without orders

-- LEFT JOIN

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON o.customer_id = c.id;


/* Get all customers along with their orders, 
including orders without matching customers */
-- RIGHT JOIN
SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON o.customer_id = c.id;

/* Get all customers along with their orders, 
including orders without matching customers */
-- LEFT JOIN
SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM orders AS o
LEFT JOIN customers AS c
ON o.customer_id = c.id;


/* Get all customers and all orders , even if there's no match */
-- FULL JOIN
SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM orders AS o
FULL JOIN customers AS c
ON o.customer_id = c.id;

