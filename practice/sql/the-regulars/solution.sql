WITH monthly_users as (SELECT DISTINCT user_id, (DATE_TRUNC('Month',session_start)) as month
FROM user_sessions)
SELECT user_id
FROM monthly_users
GROUP BY user_id
HAVING COUNT(month) > 2
