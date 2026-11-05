SELECT department, 
SUM(CASE 
WHEN fiscal_quarter = 'Q1'
THEN 1 ELSE 0 END) as q1,
SUM(CASE 
WHEN fiscal_quarter = 'Q2'
THEN 1 ELSE 0 END) as q2,
SUM(CASE 
WHEN fiscal_quarter = 'Q3'
THEN 1 ELSE 0 END) as q3,
SUM(CASE 
WHEN fiscal_quarter = 'Q4'
THEN 1 ELSE 0 END) as q4
FROM employee_metrics
GROUP BY department
