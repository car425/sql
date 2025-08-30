--SELECT

-- select everything from the customer TABLE
SELECT*FROM customer; 

-- use sql as a calculator
SELECT 1+1, 10*5;


--add a static VALUE
select 2025 as this_year, 'August' as this_month, customer_id
FROM customer;

-- add an order by and LIMIT
select*
from customer
order by customer_first_name
limit 10;

-- select multiple columns (hint: use commas)
select customer_id, customer_first_name
from customer;

