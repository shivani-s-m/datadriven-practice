WITH transaction_num as (SELECT user_id, total_amount, transaction_date,
ROW_NUMBER() OVER(PARTITION BY user_id ORDER BY transaction_date) as row_num
FROM transactions)
SELECT user_id, total_amount, transaction_date
FROM transaction_num
WHERE row_num =2
