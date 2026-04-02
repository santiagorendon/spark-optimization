#!/bin/bash

set -e

docker build -t spark-base:latest --target spark-base -f ./docker/spark.Dockerfile .
docker build -t spark-master:latest --target spark-master -f ./docker/spark.Dockerfile .
docker build -t spark-worker:latest --target spark-worker -f ./docker/spark.Dockerfile .
docker build -t spark-submit:latest --target spark-submit -f ./docker/spark.Dockerfile .
