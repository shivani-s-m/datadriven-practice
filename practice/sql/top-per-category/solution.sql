WITH category_ranks as (SELECT product_name, category, 
RANK() OVER (PARTITION BY category ORDER BY rating DESC) AS rank_category,
rating
FROM products
WHERE rating IS NOT NULL)
SELECT product_name, category, rating
FROM category_ranks 
WHERE rank_category=1
ORDER BY category
