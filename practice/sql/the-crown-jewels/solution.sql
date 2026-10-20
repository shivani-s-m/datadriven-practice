SELECT TOP(5) (p.product_name), sum(t.total_amount) as total_revenue
FROM transactions t 
INNER JOIN products p on p.product_id = t.product_id
GROUP BY p.product_name
ORDER BY sum(t.total_amount) DESC
