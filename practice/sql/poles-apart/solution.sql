SELECT token_id, requests
FROM api_tokens
WHERE requests IN (SELECT MAX(requests) FROM api_tokens)
OR requests IN (SELECT MIN(requests) FROM api_tokens WHERE requests !=0)
OR (requests = 0 and scope = 'admin')
ORDER BY requests DESC
