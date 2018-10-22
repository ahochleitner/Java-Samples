#!/bin/bash
POD=jdk
FILE=

for i in MemoryInfo.java Main.java HelloWorld.java listThreads.sh MemEat.java CpuBench.java OOM.java; do
  FILE=$i
  kubectl cp $FILE $POD:$FILE
done

kubectl cp MemoryConsumer/MemoryConsumer.java $POD:MemoryConsumer.java

