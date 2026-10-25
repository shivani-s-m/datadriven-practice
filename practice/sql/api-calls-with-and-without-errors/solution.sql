SELECT endpoint, 
SUM(CASE 
WHEN err_msg IS NULL then 1
ELSE 0
END) as no_error_count,
count(err_msg) as error_count,
count(endpoint) as total_count
FROM api_calls
GROUP BY endpoint
