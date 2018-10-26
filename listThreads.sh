#!/bin/bash

echo "======================================"
echo -n "GesamtThreads "
jstack $1 | grep ^\" | wc -l
jstack $1 | grep ^\" 
echo

echo "======================================"
echo -n "GC  "
jstack $1 | grep ^\" | grep "GC " | wc -l
jstack $1 | grep ^\" | grep "GC "
echo

echo "======================================"
echo -n "G1 "
jstack $1 | grep ^\" | grep "G1 " | wc -l
jstack $1 | grep ^\" | grep "G1 "
echo

echo "======================================"
echo -n "CompilerThreads "
jstack $1 | grep ^\" | grep "CompilerThread" | wc -l
jstack $1 | grep ^\" | grep "CompilerThread"
echo

echo "======================================"
echo -n "Worker "
jstack $1 | grep ^\" | grep "Worker" | wc -l
jstack $1 | grep ^\" | grep "Worker"
echo

echo "======================================"
echo -n "Rest "
jstack $1 | grep ^\" | grep "Worker" | wc -l
jstack $1 | grep ^\" | grep "Worker"
echo
