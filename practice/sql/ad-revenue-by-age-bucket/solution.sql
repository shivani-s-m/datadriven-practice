SELECT u.age_bucket, sum(revenue) as total_revenue
FROM ad_impressions a
INNER JOIN users u on u.user_id = a.user_id
WHERE age_bucket IS NOT NULL
GROUP BY u.age_bucket
ORDER BY total_revenue DESC
