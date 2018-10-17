#!/bin/bash

javac MemoryConsumer.java 
jar cf memory_consumer.jar MemoryConsumer.class 

echo "... docker login gemacht?"
echo "... gegebenenfalls docker login lkw-dev-registry.artifactory.prod.lkw-walter.com machen"

docker build -t memory_consumer .
./doArtifactoryUpload.sh 
kubectl delete -f memory-consumer.yaml
kubectl create -f memory-consumer.yaml

