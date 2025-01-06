
from pyspark.sql import SparkSession

if __name__ == "__main__":
    spark = SparkSession.builder.appName("Spark Submit Example").getOrCreate()
    data = [("Alice", 28), ("Bob", 35), ("Cathy", 45)]
    df = spark.createDataFrame(data, ["Name", "Age"])
    df.show()
    spark.stop()

