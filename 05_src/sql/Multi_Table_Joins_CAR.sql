-- multiple table joins

--which vendor has sold products to a customer and which product was it and to whom was it sold? --

SELECT DISTINCT 
customer_first_name, 
customer_last_name,
vendor_name, product_name
--customer_id (was removed)
--product_id (was removed)

FROM customer_purchases as cp
inner join customer as c
       ON c.customer_id = cp.customer_id
inner join vendor as v
	on v.vendor_id = cp.vendor_id
inner join product as p
	on p.product_id = cp.product_id;
	
/* Adding a date.  what if we add the dates they were purchased? */
SELECT DISTINCT 
market_date,
customer_first_name, 
customer_last_name,
vendor_name, product_name
--customer_id (was removed)
--product_id (was removed)

FROM customer_purchases as cp
inner join customer as c
       ON c.customer_id = cp.customer_id
inner join vendor as v
	on v.vendor_id = cp.vendor_id
inner join product as p
	on p.product_id = cp.product_id;
