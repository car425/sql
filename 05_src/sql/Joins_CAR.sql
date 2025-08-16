-- Outer Join
-- left JOIN
-- there are products that have been bought.  are there products that have not been bought?

SELECT DISTINCT
p.product_id, cp.product_id as [cp.product_id], product_name

from product as p
left join customer_purchases as cp
	on p.product_id = cp.product_id
	
	where cp.product_id is null; -- only show product ids that have not been sold
	
-- directions matter
-- this shows only products that have not been sold because there are no product ids in cp that aren't in product
	
	SELECT DISTINCT
p.product_id, cp.product_id as [cp.product_id], product_name

from customer_purchases as cp
left join product as p
	on p.product_id = cp.product_id
	

	
	



