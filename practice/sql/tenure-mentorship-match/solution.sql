SELECT review_id, repo_name, author, 
FIRST_VALUE(author) over (PARTITION BY repo_name ORDER BY opened_at ASC) as most_tenured_author
FROM code_reviews
