from pyspark.sql import functions as F

products.join(transactions, on = "product_id", how="left_anti").select("product_id", "product_name")
