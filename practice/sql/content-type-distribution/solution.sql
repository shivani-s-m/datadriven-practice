SELECT content_type, count(*)
FROM content_items
GROUP BY content_type
ORDER BY content_type
