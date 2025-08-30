-- CASE

-- add some logic to determine which vendors come on which days
select * ,
case WHEN vendor_type = ' Fresh Focused' then 'Wednesday'
	when vendor_type = 'prepared foods' then 'Thursday'
	 else 'Saturday'
end as day_of_specialty
-- pie day, otherwise nothing 
, case when vendor_name = "Annie's Pies" -- double quotes will work just this once!
		Then ' Annie is the best'
		End as annie_is_the_queen
,case when vendor_name like '%pie%' 
     then 'Wednesday'
	 else 'Friday'
	 end as pie_day

-- nonsense, but not a string instead a different column
,case WHEN vendor_type = ' Fresh Focused' then vendor_owner_first_name
	when vendor_type = 'prepared foods' then vendor_owner_last_name
	 else vendor_id * 10
end as first_or_last
from vendor
