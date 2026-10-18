SELECT tbl_name,
SUM(CASE WHEN passed = 0 THEN 1 ELSE 0 END) AS failed_checks,
COUNT(DISTINCT CASE WHEN passed = 0 THEN rule END) AS distinct_rules,
AVG(CASE WHEN passed = 0 THEN fail_pct END) AS avg_fail_pct
FROM dq_checks
GROUP BY tbl_name
HAVING AVG(CASE WHEN passed = 0 THEN fail_pct END) > 30
ORDER BY avg_fail_pct DESC
