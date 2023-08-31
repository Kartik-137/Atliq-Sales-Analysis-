SELECT * FROM sales.products;

-----------------------------------------------------------------
-- Basic information about the data
DESC products;

-----------------------------------------------------------------
-- Find the total number of records;
SELECT COUNT(*) FROM products;
-- Total 279 records are present

------------------------------------------------------------------
-- Count the number of null values
SELECT COUNT(*) FROM products WHERE product_code IS NULL;
-- N0 null values are present

------------------------------------------------------------------
-- Count the number of products in each product type
SELECT product_type, COUNT(product_code) as 'count of products'
FROM products
GROUP BY product_type;
-- 191 products belongs to Own brand and 88 belongs to the Distribution type

