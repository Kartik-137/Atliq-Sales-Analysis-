SELECT * FROM sales.customers;

------------------------------------------------------------------
-- Basic information about the customers table
DESC customers;

------------------------------------------------------------------
-- Fnd total number of records in customers table
SELECT COUNT(*) FROM customers;
-- Total 38 records are present

------------------------------------------------------------------
-- Correct the spelling mistake in custmer_name column
ALTER TABLE customers
RENAME COLUMN custmer_name TO customer_name;

------------------------------------------------------------------
-- Find record with null values
SELECT COUNT(*) FROM customers WHERE customer_name is null;
-- No records found

------------------------------------------------------------------
-- Find total number of customers who belong to each type
SELECT customer_type,COUNT(*)
FROM customers
GROUP BY customer_type;
-- Each customer type has 19 different customers



