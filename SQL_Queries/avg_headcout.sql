SELECT 
  Division, 
  ROUND(AVG(employees), 2) AS Avg_Headcount, 
  FORMAT('$%.2f', AVG(Avg_Salary)) AS Avg_Salary
FROM `fpa-project001.FPA_data.Head count`
GROUP BY Division;



File: Revenue_per_employee
Purpose: Calculates the Average Headcount and salary of employees by division 
Author: Ashish Netha G
Date: October 2025