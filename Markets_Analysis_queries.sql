SELECT * FROM sales.markets;

------------------------------------------------------------------
-- Basic information of the markets table
DESC markets;

------------------------------------------------------------------
-- Find the total number istances of each zone
SELECT zone, count(*) 
FROM markets
GROUP BY zone;
-- Note that markets outside india were taken care of in power query editor

------------------------------------------------------------------
-- Order the markets name according to their zones
SELECT *
FROM markets
ORDER BY zone DESC;