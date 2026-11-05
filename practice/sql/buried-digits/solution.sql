SELECT svc_name, CAST(REPLACE(REPLACE(version,'.',''),'v','') as INT) as version_num
FROM deploy_logs
WHERE env_name = 'staging'
