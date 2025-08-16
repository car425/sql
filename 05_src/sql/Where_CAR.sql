--WHERE

select*from customer
where customer_id = 1
or customer_id = 2;  -- 1 or 2
--AND customer_id = 2 -- returns NOTHING

--IN
select*from customer
where customer_id in (3, 4, 5) -- only customers 3, 4, 5
or customer_postal_code in ('M4H', 'M1L'); -- customers in these postal codes

-- LIKE 
-- all the peppers
select * from product
where product_name like '%pepper%';

-- customer with a last name starting with a
select * from customer
where customer_last_name like "a%";

--testing nulls; nulls and blanks
select * from product
where product_size is NULL
or product_size = ''; -- two single quotes, "blanks", different from nulls

-- between
select * from customer
where customer_id between 1 and 20;





