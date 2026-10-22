SELECT DISTINCT region
FROM orders
WHERE status IN ('Shipped', 'Completed') AND region IS NOT NULL
GROUP BY region
HAVING MAX(profit) >1200
