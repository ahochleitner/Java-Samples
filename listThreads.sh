#!/bin/bash

echo "======================================"
echo -n "GesamtThreads "
jstack $1 | grep ^\" | wc -l
jstack $1 | grep ^\" 
echo

echo "======================================"
echo -n "GC tasks "
jstack $1 | grep ^\" | grep "GC task" | wc -l
jstack $1 | grep ^\" | grep "GC task"
echo

echo "======================================"
echo -n "CompierThreads "
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
