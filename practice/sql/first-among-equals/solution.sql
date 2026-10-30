WITH ranked_products as (SELECT product_name, 
COUNT(transaction_id) as order_count, 
SUM(t.quantity) as units_sold
FROM products p
INNER JOIN transactions t on t.product_id = p.product_id
GROUP BY product_name
ORDER BY units_sold DESC)
SELECT *
FROM ranked_products
WHERE units_sold =(SELECT MAX(units_sold) FROM ranked_products)
