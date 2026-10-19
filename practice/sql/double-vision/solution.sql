SELECT email, count(email) as occurence_count,
MIN(signup_date) as earliest_signup,
MAX(signup_date) as latest_signup
FROM users 
GROUP BY email
HAVING count(email) >= 2
ORDER BY count(email) DESC
