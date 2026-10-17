SELECT avg(results_count) as avg_results
FROM search_queries
WHERE lower(search_term) like '%keyboard%' AND query_time >= CURRENT_TIMESTAMP - INTERVAL '90 days'
