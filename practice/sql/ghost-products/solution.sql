SELECT p.product_name
FROM products p 
LEFT JOIN transactions t on t.product_id = p.product_id
WHERE t.transaction_id IS NULL
ORDER BY p.product_name
