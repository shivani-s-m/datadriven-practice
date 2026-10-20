SELECT EXTRACT(YEAR FROM bill_date) as fiscal_year,
SUM(amount) as total_spend, COUNT(DISTINCT svc_name) as service_count
FROM cloud_costs
GROUP BY EXTRACT(YEAR FROM bill_date)
