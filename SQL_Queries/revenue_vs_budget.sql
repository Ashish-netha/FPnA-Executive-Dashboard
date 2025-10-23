select 
extract (YEAR from parse_date ('%Y-%m',r.Month)) as Year, r.Division,
sum(r.revenue) as Actual_revenue,
sum(b. Budget_Expense) as Actual_Budget,
(sum(r.revenue)- sum(b.Budget_Expense)) as variance
from `fpa-project001.FPA_data.Revenue` r
join `fpa-project001.FPA_data.Budget` b 
on r.Month = b.Month and b.Division = r.Division
group by YEAR, r.Division
ORDER BY Year, r.Division;



File: Revenue_per_employee
Purpose: Calculates the total revenue and total budget, along with the Variance per month by division. 
Author: Ashish Netha G
Date: October 2025