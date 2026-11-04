SELECT
    us.user_id,
    MAX(CASE
        WHEN d.device_type = 'mobile'
        THEN us.session_duration_sec
    END) AS longest_mobile,
    MAX(CASE
        WHEN d.device_type = 'desktop'
        THEN us.session_duration_sec
    END) AS longest_desktop
FROM user_sessions us
INNER JOIN devices d
    ON us.device_id = d.device_id
WHERE session_start >= DATE '2025-01-01'
  AND session_start < DATE '2026-01-01'
GROUP BY us.user_id
ORDER BY us.user_id
