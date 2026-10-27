SELECT campaign, EXTRACT(Year from sent_at) as year, 
COUNT(notif_id) * 1.0 / NULLIF(SUM(opened), 0) AS cost_per_open
FROM push_notifs
WHERE campaign IS NOT NULL AND LOWER(status)!='pending'
GROUP BY campaign, DATE_TRUNC('year', sent_at)
HAVING cost_per_open IS NOT NULL
