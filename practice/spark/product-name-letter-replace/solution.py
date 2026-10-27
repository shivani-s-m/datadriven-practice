from pyspark.sql import functions as F

results = (
  products.withColumn(
    "modified_name", F.regexp_replace(F.col("product_name"),"e", "E"))
  .select("product_id", "modified_name")
  )
results.show()
