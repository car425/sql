--inner join 
-- inner join without an alias

-- get product names alongside customer purchases... only products that a customer has purchased are displayed
SELECT 
product_name, -- come from product table
vendor_id, -- coming from the customer purchases table ... below
market_date,
customer_id,
customer_purchases.product_id

from customer_purchases
inner join product
       on customer_purchases.product_id = product.product_id;
	   
-- which vendor has sold products to a customer and which product was it and to whom was it sold
select distinct vendor_id, c.customer_id, customer_first_name, customer_last_name, product_id -- go and get this name
from customer_purchases as cp
inner join customer as c
	on c.customer_id = cp.customer_id;
	
	


