SELECT pipe_name, MIN(start_at) as first_run, 
MAX(start_at) as last_run,
COUNT(DISTINCT DATE_TRUNC('month', start_at)) as active_months
FROM data_pipes
GROUP BY pipe_name
