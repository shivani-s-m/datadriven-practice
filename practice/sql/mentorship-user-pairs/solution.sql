WITH all_users as (
SELECT u1.user_id as user_id_1, 
u1.age_bucket as age_bucket_1, 
u1.account_status as status_1,
EXTRACT(Year FROM u1.signup_date) as year1,
u2.user_id as user_id_2, u2.age_bucket as age_bucket_2, 
u2.account_status as status_2,
EXTRACT(Year FROM u2.signup_date) as year2
FROM users as u1
INNER JOIN users as u2 on u2.account_status = u1.account_status AND u1.user_id < u2.user_id)
SELECT DISTINCT user_id_1, user_id_2
FROM all_users
WHERE age_bucket_1 != age_bucket_2 AND year1 != year2
