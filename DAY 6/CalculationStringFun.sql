-- CALCULATION FUNCTION --
-- calculate the length of each customer's firstname
--LEN function 
SELECT 
	first_name,
	Len(first_name) AS len_first_name
FROM customers