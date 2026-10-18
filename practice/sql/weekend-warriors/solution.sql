WITH event_days as (SELECT event_type,
  EXTRACT(DOW FROM event_timestamp) as day_of_week
FROM event_data)
SELECT event_type,
SUM(CASE WHEN day_of_week = 0 OR day_of_week  = 6  THEN 1 ELSE 0 
END) as weekend_count,
 SUM(CASE WHEN day_of_week > 0 AND day_of_week <= 5 THEN 1 ELSE 0
END) as weekday_count
FROM event_days
GROUP BY event_type
ORDER BY weekend_count DESC
