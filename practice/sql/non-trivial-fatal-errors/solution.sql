SELECT err_id, message, svc_name,
CASE 
WHEN LEN(message) IN (30,31) THEN 'mid'
ELSE 'long'
END as length_category
FROM err_tracks
WHERE LOWER(severity) = 'fatal' and LEN(message) >= 30
