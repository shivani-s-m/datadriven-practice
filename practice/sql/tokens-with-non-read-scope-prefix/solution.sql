SELECT COUNT(DISTINCT owner_id)
FROM api_tokens
WHERE scope NOT LIKE 'read%'
