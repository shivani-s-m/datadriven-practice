SELECT user_id, count(view_id)
FROM page_views
WHERE viewed_at BETWEEN '2025-01-01 00:00:00' AND '2025-12-29 00:00:00'
GROUP BY user_id
