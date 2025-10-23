select 
Extract (YEAR from parse_date('%Y-%m', r.month)) as Year, r.Division,
(round (sum (r.Revenue) / avg (h.employees),2 )) as Revenue_per_Employee
from `fpa-project001.FPA_data.Revenue` r
join `fpa-project001.FPA_data.Head count` h
on r.Month= h.Month and r.division= h.division
group by Year, r.Division
order by Year




File: Revenue_per_employee
Purpose: Calculates the revenue per employee per month by division. 
Author: Ashish Netha G
Date: October 2025