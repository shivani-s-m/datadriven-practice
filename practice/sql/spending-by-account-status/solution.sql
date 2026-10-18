SELECT u.account_status, count(t.transaction_id) as transaction_count, 
count(DISTINCT u.user_id) as user_count, sum(t.total_amount) as total_revenue
FROM users u 
LEFT JOIN transactions t on u.user_id=t.user_id 
GROUP BY u.account_status
HAVING count(t.transaction_id) > 50
ORDER BY total_revenue DESC
