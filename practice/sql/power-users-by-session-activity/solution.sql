SELECT u.user_id, u.username, count(s.session_id) as session_count,
sum(s.pages_viewed) as total_pages
FROM user_sessions s
JOIN users u on s.user_id = u.user_id
WHERE u.account_status ='active'
GROUP BY u.user_id 
HAVING avg(s.pages_viewed) >=25 and count(s.session_id) >=3
ORDER BY sum(s.pages_viewed) DESC
