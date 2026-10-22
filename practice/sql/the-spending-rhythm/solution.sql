SELECT user_id, TO_CHAR(transaction_date, 'YYYY-MM') as month,
count(transaction_id) as transaction_count
FROM transactions
GROUP BY user_id, TO_CHAR(transaction_date, 'YYYY-MM')
