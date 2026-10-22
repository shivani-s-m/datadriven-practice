from pyspark import functions as F
result = (products.filter(F.col("rating")==1).select("product_name","rating")
)
result.show()
