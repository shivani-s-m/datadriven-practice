SELECT svc_name,
SUM(CASE WHEN lower(severity) = 'critical' THEN 1 else 0 END) as critical_count,
SUM(CASE WHEN lower(severity) = 'high' THEN 1 else 0 END) as high_count,
SUM(CASE WHEN lower(severity) = 'medium' THEN 1 else 0 END) as medium_count,
SUM(CASE WHEN lower(severity) = 'low' THEN 1 else 0 END) as low_count,
COUNT(severity) as total_count
FROM alert_events
GROUP BY svc_name
ORDER BY total_count DESC
