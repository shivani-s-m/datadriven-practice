SELECT CAST(COUNT(*) as DECIMAL) as after_hours_count
FROM api_calls
WHERE (EXTRACT(year FROM call_time)=2025 and (EXTRACT(HOUR FROM call_time) <9 or EXTRACT(HOUR FROM call_time) >=16)) OR 
(EXTRACT(year FROM call_time)=2025 AND (EXTRACT(DOW FROM call_time) = 0 or EXTRACT(DOW FROM call_time)=6))
