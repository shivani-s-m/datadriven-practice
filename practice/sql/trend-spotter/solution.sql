SELECT user_id, total_amount, transaction_date,
LAG(total_amount, 1, NULL)
OVER (PARTITION BY user_id ORDER BY transaction_date ASC) as prev_amount
FROM transactions
