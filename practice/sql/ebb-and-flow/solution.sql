WITH monthly_revenue as 
(SELECT TO_CHAR(DATE_TRUNC('month', transaction_date), 'YYYY-MM') as month,
sum(total_amount) as revenue
FROM transactions
GROUP BY DATE_TRUNC('month', transaction_date) 
ORDER BY month),
prev_monthly_rev as (SELECT month, revenue,
LAG(revenue, 1,0) OVER 
(ORDER BY month) as prev_month
FROM monthly_revenue)
SELECT month, revenue, ROUND(((revenue-prev_month)*100)/prev_month,2) as pct_change
FROM prev_monthly_rev
