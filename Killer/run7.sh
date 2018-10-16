#!/bin/bash

java -XX:+IgnoreUnrecognizedVMOptions -XX:+CMSClassUnloadingEnabled \
  -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC \
  -XX:+UseBiasedLocking -XX:+DoEscapeAnalysis -XX:+EliminateLocks \
  -XX:-TieredCompilation -XX:+UseCompressedOops -XX:+UseXmmI2D \
  -XX:+UseXmmI2F -XX:+UseXMMForArrayCopy -XX:+UseUnalignedLoadStores \
  -XX:+PrintVMOptions -XX:+UseG1GC -XX:+UnlockDiagnosticVMOptions \
  -XX:-UseIncDec -XX:+PrintClassHistogram -XX:+PrintGCDetails \
  -XX:+PrintGCTimeStamps -XX:+PrintGCDateStamps -XX:+PrintConcurrentLocks \
  -XX:+OptimizeStringConcat -XX:-UsePopCountInstruction -XX:+UseLargePages \
  -XX:MaxGCPauseMillis=1 -Xmx900m -XX:MaxPermSize=2m \
  -Xloggc:./app.gc.log \
  Killer7

