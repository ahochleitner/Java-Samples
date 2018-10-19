#!/bin/bash

if [ "$#" != "1" ]; then
  echo "usage: $0 PID"
  echo "Paramterangabe ProcessId fehlt!"
  exit 1
fi

echo "======================================"
echo -n "GesamtThreads "
jstack $1 | grep ^\" | wc -l
jstack $1 | grep ^\" 
echo

echo "======================================"
echo -n "Base "
jstack $1 | grep ^\" | grep -E "Signal Dispatcher|Finalizer|Reference Handler|main" | wc -l
jstack $1 | grep ^\" | grep -E "Signal Dispatcher|Finalizer|Reference Handler|main" 
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
