SELECT svc_name, 
MAX(count) as max_error_count
FROM err_tracks
WHERE DATE_TRUNC('month',first_at) BETWEEN '2026-01-01' AND '2026-06-01'
GROUP BY svc_name
ORDER BY max_error_count DESC
