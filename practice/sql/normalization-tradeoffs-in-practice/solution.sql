SELECT category, sum(quantity* price) as total_revenue
FROM transactions t 
INNER JOIN products p on p.product_id = t.product_id
GROUP BY category
