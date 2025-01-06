#!/bin/bash

# Set environment variables for Spark
export SPARK_MASTER_HOST=""
export SPARK_MASTER_PORT=""

# Start the Spark master
$SPARK_HOME/sbin/start-master.sh
tail -f /dev/null
# Keep the container running by tailing the Spark log
#tail -f $SPARK_HOME/logs/*