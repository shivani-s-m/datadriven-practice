SELECT count(commit_id) as total_commits,
count(DISTINCT lower(trim(author))) as distinct_authors
FROM repo_commits
