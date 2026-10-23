SELECT *, 1 as rn
FROM api_tokens
GROUP BY owner_id
HAVING MAX(last_used)
ORDER BY owner_id
