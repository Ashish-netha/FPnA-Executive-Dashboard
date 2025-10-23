SELECT
  r.Month,
  r.Division,
  SUM(r.Revenue) - SUM(e.Expense) AS Profit
FROM `fpa-project001.FPA_data.Revenue` r
JOIN `fpa-project001.FPA_data.Expenses` e
  ON r.Month = e.Month
  AND r.Division = e.Division
GROUP BY r.Month, r.Division
ORDER BY r.Month, r.Division;



File: Profitability
Purpose: Calculates the Profitability 
Author: Ashish Netha G
Date: October 2025