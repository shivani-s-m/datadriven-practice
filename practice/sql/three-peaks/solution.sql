WITH monthly_amount as (SELECT LOWER(team_name) as team_name, SUM(amount) as amount
FROM cost_allocs
GROUP BY LOWER(team_name),period),
ranked_amount as (SELECT LOWER(team_name) as team_name,
DENSE_RANK() OVER(PARTITION BY LOWER(team_name) ORDER BY amount DESC) as ranks,
amount
FROM monthly_amount)
SELECT DISTINCT team_name, amount as monthly_cost
FROM ranked_amount
WHERE ranks <=3
