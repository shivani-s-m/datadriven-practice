SELECT DISTINCT u.username
FROM users u 
INNER JOIN transactions t on t.user_id = u.user_id
INNER JOIN user_sessions us on us.user_id = u.user_id
ORDER BY u.username
