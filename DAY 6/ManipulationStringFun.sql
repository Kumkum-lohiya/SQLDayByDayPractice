-- Concatenate firstname and country into one column
-- CONCAT Function --
SELECT 
	first_name,
	country,
	CONCAT(first_name,'-',country) AS name_country
FROM customers;

-- Convert the firstname to lowercase
-- LOWER Function --

SELECT 
	first_name,
	LOWER(first_name) AS Low_name
FROM customers;

-- Convert the firstname to UPPERCASE
-- UPPER Function --
SELECT 
	first_name,
	UPPER(first_name) AS Up_name
FROM customers;

-- Find customers whose firstname contains leading or trailing spaces
-- TRIM Function --
SELECT 
	first_name,
	LEN(first_name) len_name,
	LEN(TRIM(first_name)) len_trim_name,
	LEN(first_name) - LEN(TRIM(first_name)) flag
FROM customers
--WHERE LEN(first_name) != LEN(TRIM(first_name)) 
WHERE first_name != TRIM(first_name)

-- Remove dashes (-) from a phone number
-- REPLACE Function --

SELECT
'123-456-7890' AS phone,
REPLACE('123-456-7890','-','') AS clean_phone;

-- Replace file extension from txt to csv

SELECT 
'report.txt' AS txt_file,
REPLACE('report.txt','txt','csv') AS csv_file;