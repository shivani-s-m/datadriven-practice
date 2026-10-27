SELECT user_id, SUM(total_amount) as total_spent
FROM transactions
WHERE DATE_TRUNC('year', transaction_date) = '2026-01-01'
GROUP BY user_id
ORDER BY total_spent DESC
