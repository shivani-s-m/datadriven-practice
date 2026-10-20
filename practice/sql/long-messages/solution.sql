SELECT author, TRIM(message), 
LENGTH(TRIM(message)) as message_length
FROM repo_commits
WHERE LENGTH(TRIM(message)) > (SELECT AVG(LENGTH(TRIM(message))) FROM repo_commits WHERE TRIM(message) <> '')
AND TRIM(message) <>''
ORDER BY LENGTH(TRIM(message)) DESC
