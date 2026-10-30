SELECT i.content_type, count(view_id)
FROM content_items i
INNER JOIN content_views v on v.content_id = i.content_id
GROUP BY i.content_type
