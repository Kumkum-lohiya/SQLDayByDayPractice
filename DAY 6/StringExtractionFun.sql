-- STRING EXTRACTION --
-- Retrieve the first two characters of each first name
-- LEFT String Function

SELECT 
	first_name,
	LEFT(TRIM(first_name),2) AS first_2_char
FROM customers;


-- Retrieve the last two character of each first name
-- RIGHT String Function

SELECT 
	first_name,
	RIGHT(first_name,2) AS last_2_char
FROM customers;


-- Retrieve a list of customer's firstname removing the first character
-- SUBSTRING string function

SELECT 
	first_name,
	SUBSTRING(TRIM(first_name),2,len(first_name)-1) AS substring_char
FROM customers;