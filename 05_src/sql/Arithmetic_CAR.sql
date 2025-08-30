-- Arithmetic -- and Having --

SELECT 
10.0 / 3.0 as division,
cast (10.0 as INT) / cast (3.0 as int) as integer_division;

-- Having --

-- how much did a customer spend on each day

SELECT 
market_date,
customer_id,
SUM(quantity*cost_to_customer_per_qty) as total_cost

FROM customer_purchases -- first 
WHERE customer_id between 1 and 5 -- filtering the non aggregated values -- second

group by market_date, customer_id --third
having total_cost > 50; -- filtering the aggregated values - fourth

SELECT
count (product_id) as number_prod,
product_id
FROM customer_purchases
where product_id <= 8
group by product_id
having count(product_id) between 300 and 500

