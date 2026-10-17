WITH year_cost  as (SELECT SUBSTRING(bill_date , 1,4) as year, amount
FROM cloud_costs) 
SELECT year, sum(amount)
FROM year_cost 
GROUP BY year
