from pyspark.sql import functions as F
search_queries.select("query_id", F.ltrim("search_term"))
