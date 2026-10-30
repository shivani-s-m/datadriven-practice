SELECT 
  product_name,
  category,
  price,
  RANK() OVER (PARTITION BY category ORDER BY price DESC) as position
FROM products
WHERE price IS NOT NULL
