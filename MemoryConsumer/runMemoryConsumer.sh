#!/bin/bash

cd /opt/local/jars
java -version

javac MemoryConsumer.java
#java MemoryConsumer
java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap MemoryConsumer
