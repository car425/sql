-- DISTINCT

--without distinct 4221 rows of various cust_ids
select customer_id FROM customer_purchases;

--with distinct ... rows of various cust ids
select distinct customer_id from customer_purchases;

-- 150 days the market was open
select market_date
from market_date_info;

-- market is only open wed and sat
select DISTINCT market_day
from market_date_info;

/* which vendor has sold products to a customer */ -- 3 rows
select DISTINCT vendor_id
from customer_purchases;

/* which vendor has sold products to a customer and which product was it?*/ -- 8 rows
select DISTINCT vendor_id, product_id
from customer_purchases;

/* which vendor has sold products to a customer and which product was it and to whom was it sold ?*/ -- 200 rows
select DISTINCT vendor_id, product_id, customer_id
from customer_purchases
order by product_id ASC, customer_id DESC;




