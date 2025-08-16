

-- VIEW
DROP VIEW IF EXISTS vendor_daily_sales;
CREATE VIEW IF NOT EXISTS vendor_daily_sales AS

	SELECT 
	md.market_date
	,market_day
	,market_week
	,market_year
	,vendor_name -- from vendor
	,SUM(quantity*cost_to_customer_per_qty) as sales
	
	
	FROM market_date_info md
	INNER JOIN customer_purchases cp
		ON md.market_date = cp.market_date
	INNER JOIN vendor v
		ON cp.vendor_id = v.vendor_id
		
	GROUP BY cp.market_date, v.vendor_id;

SELECT * FROM vendor_daily_sales;


--SELECT * FROM product_expanded

--DYNAMIC VIEW; Only works if have imported new table properly
--1) update new-cust-pur to today

DROP VIEW IF EXISTS vendor_daily_sales;
CREATE VIEW IF NOT EXISTS vendor_daily_sales AS

	SELECT 
	md.market_date
	,market_day
	,market_week
	,market_year
	,vendor_name -- from vendor
	,SUM(quantity*cost_to_customer_per_qty) as sales
	
	
	FROM market_date_info md
	INNER JOIN customer_purchases cp
		ON md.market_date = cp.market_date
	INNER JOIN vendor v
		ON cp.vendor_id = v.vendor_id
		
	GROUP BY cp.market_date, v.vendor_id;

SELECT * FROM vendor_daily_sales;

-- CROSS JOIN
DROP TABLE IF EXISTS temp.sizes;
CREATE TEMP TABLE IF NOT EXISTS temp.sizes (size TEXT);

INSERT INTO temp.sizes
VALUES('small'),
('medium'),
('large');

SELECT * FROM temp.sizes;

SELECT product_name, size
FROM product
CROSS JOIN temp.sizes

