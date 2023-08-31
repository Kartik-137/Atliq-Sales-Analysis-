SELECT * FROM sales.date;

-----------------------------------------------------------------
-- Basic information about the date table
DESC date;

-----------------------------------------------------------------
-- Find the total number of entries
SELECT COUNT(*) FROM date;
-- 1126 records present

-----------------------------------------------------------------
-- Find the duration over which the data is recorded
SELECT MIN(date) AS 'Date range of records' FROM date
UNION
SELECT MAX(date) FROM date;
-- The data is recorded from June of 2017 to June of 2020

-----------------------------------------------------------------
-- Find the total number of records from each year
SELECT year,count(*) AS 'Total number of records'
FROM date
GROUP BY year;
-- Obsv: 2018, 2019 both tops with 365 records each



