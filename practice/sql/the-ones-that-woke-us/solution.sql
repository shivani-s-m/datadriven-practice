from pyspark.sql import functions as F

results = (
  alert_events.filter((((F.lower(F.col("severity"))=="high")|
    (F.lower(F.col("severity"))=="critical")) & 
    (F.year(F.col("fired_at"))==2026)
    )
  ))
results.show()
