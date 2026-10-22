from pyspark.sql import functions as F

result = (
  ci_builds
  .groupBy("repo_name")
  .agg(
    F.sum(
      F.when(F.col("status")=="success",1)
      .otherwise(0)
      ).alias("success_count")
    )
  .orderBy(F.col("success_count").desc()
    ))

result.show()
