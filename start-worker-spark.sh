#!/bin/bash

# Set environment variables for Spark
export SPARK_MASTER_HOST=""
export SPARK_MASTER_PORT=""
export SPARK_MASTER_URL="spark://spark-master-service:7077"
# Start the Spark master
$SPARK_HOME/sbin/start-worker.sh $SPARK_MASTER_URL
tail -f /dev/null
# Keep the container running by tailing the Spark log
#tail -f $SPARK_HOME/logs/*