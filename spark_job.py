from pyspark.sql import SparkSession

# Initialize Spark session
spark = SparkSession.builder \
    .appName("MySparkJob") \
    .getOrCreate()

# Create a simple DataFrame
data = [("Alice", 1), ("Bob", 2), ("Charlie", 3)]
columns = ["name", "value"]
df = spark.createDataFrame(data, columns)

# Show DataFrame content
df.show()

# Stop the Spark session
spark.stop()

