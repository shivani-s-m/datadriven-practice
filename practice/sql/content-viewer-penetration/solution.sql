SELECT 100.0*COUNT(DISTINCT cv.user_id)/COUNT(DISTINCT u.user_id) as viewer_pct
FROM content_views cv
FULL OUTER JOIN users u on cv.user_id = u.user_id
