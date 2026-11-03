SELECT sum(t.total_amount) as total_spend
FROM transactions t
LEFT JOIN users u on u.user_id = t.user_id
LEFT JOIN products p on p.product_id = t.product_id
WHERE u.username = 'alice' and p.category = 'Electronics' and p.rating > 3
