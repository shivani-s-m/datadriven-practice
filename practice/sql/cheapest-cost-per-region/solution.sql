SELECT region,
  min(amount) AS min_cost
FROM cloud_costs
group by region
