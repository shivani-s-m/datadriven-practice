SELECT 'inner_join' as join_type, COUNT(*)
FROM users u
INNER JOIN ad_impressions a on a.user_id = u.user_id
UNION 
SELECT 'left_join' as join_type, COUNT(*)
FROM users u
LEFT JOIN ad_impressions a on a.user_id = u.user_id
UNION 
SELECT 'full_outer_join' as join_type, COUNT(*)
FROM users u
FULL OUTER JOIN ad_impressions a on a.user_id = u.user_id
