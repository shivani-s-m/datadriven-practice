SELECT svc_name, count(*) as deploy_count
FROM deploy_logs
GROUP by svc_name
ORDER BY deploy_count DESC
