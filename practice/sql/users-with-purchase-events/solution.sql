SELECT DISTINCT user_id
FROM event_data
WHERE event_type = 'purchase'
ORDER BY user_id
