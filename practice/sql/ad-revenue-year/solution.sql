SELECT ad_campaign, SUM(revenue) as total_revenue
FROM ad_impressions
WHERE DATE_TRUNC('year', impression_time) = '2026-01-01'
GROUP BY ad_campaign
ORDER BY total_revenue DESC
