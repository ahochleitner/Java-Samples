#!/bin/bash

javac MemoryInfo.java

java -Xms10m -Xmx10m -XshowSettings:vm MemoryInfo
