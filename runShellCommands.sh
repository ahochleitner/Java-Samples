#!/bin/bash

echo "FREE OUTPUT"
free -h

echo "CGROUP OUTPUT"
cat /sys/fs/cgroup/memory/memory.limit_in_bytes

javac Main.java
echo "Main OUTPUT"
java Main

