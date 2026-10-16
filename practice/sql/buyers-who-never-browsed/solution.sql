WITH a as (SELECT t.user_id, t.total_amount
from transactions t 
LEFT JOIN page_views pv on pv.user_id = t.user_id
WHERE pv.view_id IS NULL)
SELECT DISTINCT u.username, a.total_amount
FROM a as a
LEFT JOIN users as u on u.user_id = a.user_id 
ORDER BY a.total_amount
