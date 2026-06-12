-- Find the total score and total number of customers for each country

SELECT 
	country,
	SUM(score) AS total_score,
	COUNT(first_name) AS Total_Customers
FROM customers
GROUP BY country
