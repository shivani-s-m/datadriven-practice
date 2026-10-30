SELECT MAX(bytes)
FROM cdn_logs
WHERE status = 200 and edge_loc = 'SFO'
