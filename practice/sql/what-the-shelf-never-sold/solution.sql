WITH product_revenue as (SELECT p.product_id, p.product_name, 
CASE WHEN total_amount IS NULL THEN 0 ELSE total_amount END as total_amount
FROM products p 
LEFT JOIN transactions t ON t.product_id = p.product_id)
SELECT product_id, product_name, SUM(total_amount) as total_revenue
FROM product_revenue 
GROUP BY product_id, product_name
