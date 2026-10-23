SELECT department, MAX(metric_value)-MIN(metric_value) as volatility
FROM employee_metrics
GROUP BY department
ORDER BY volatility DESC, department ASC
