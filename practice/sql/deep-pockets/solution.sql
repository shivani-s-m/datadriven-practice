SELECT user_id, sum(total_amount) as total_revenue
FROM transactions
WHERE DATE_TRUNC('month',transaction_date) = '2026-03-01'
GROUP BY user_id
