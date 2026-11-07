WITH ranks as (SELECT region, count(node_id) as node_count,
rank() OVER (ORDER BY count(node_id) DESC) as rank
FROM infra_nodes
GROUP BY region)
SELECT region, node_count
FROM ranks
WHERE rank =1
