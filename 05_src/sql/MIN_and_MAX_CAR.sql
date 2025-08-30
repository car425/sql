-- MIN and MAX --
-- What is the most expensive product? --

SELECT 

product_name,
product_qty_type,

max(original_price) as most_expensive

FROM product p
INNER JOIN vendor_inventory vi
	ON p.product_id = vi.product_id
	
ORDER BY original_price DESC;

-- prove it --

SELECT DISTINCT
product_name,
original_price

FROM product p
INNER JOIN vendor_inventory vi
	ON p.product_id = vi.product_id
	
ORDER BY original_price DESC;

--- min price per product quantity type 

SELECT DISTINCT
product_name,
product_qty_type,

min(original_price) as least_expensive

FROM product p
INNER JOIN vendor_inventory vi
	ON p.product_id = vi.product_id

GROUP BY product_qty_type
ORDER BY original_price DESC;

-- prove it

SELECT DISTINCT
product_name,
product_qty_type,
original_price,

min(original_price) as least_expensive

FROM product p
INNER JOIN vendor_inventory vi
	ON p.product_id = vi.product_id

GROUP BY product_qty_type
ORDER BY original_price DESC;
