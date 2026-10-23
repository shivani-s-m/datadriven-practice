SELECT *
FROM users
WHERE DATE_TRUNC('month',signup_date)='2025-02-01'
