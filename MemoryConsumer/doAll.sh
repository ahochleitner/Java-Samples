#!/bin/bash

javac MemoryConsumer.java 
jar cf memory_consumer.jar MemoryConsumer.class 
docker build -t memory_consumer .
./doArtifactoryUpload.sh 
kubectl delete -f memory-consumer.yaml
kubectl create -f memory-consumer.yaml

