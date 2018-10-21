#!/bin/bash
javac MemEat.java
#java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap MemEat
java MemEat
./runShellCommands.sh
java -version

