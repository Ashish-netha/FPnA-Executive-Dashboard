select
r.month,r.division,
(round(sum(e.expense)/sum(r.revenue),2))as Expense_ratio
from `fpa-project001.FPA_data.Revenue`r
join `fpa-project001.FPA_data.Expenses`e
on r.month=e.month and r.division=e.division
group by r.month, r.division
order by r.month



File: Expense_ratio
Purpose: Calculates the Expense ratio each Month by Division
Author: Ashish Netha G
Date: October 2025.