#!/bin/bash
ADDITIONAL_OPTS=""
# --cpus .5"

MAIN=CpuBench
MAIN=Main

for i in 7 8 9 10 11; do
  echo "====== " openjdk$i " ====="
  echo docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp $ADDITIONAL_OPTS openjdk:$i ./run.sh $MAIN
  sleep 5
done
