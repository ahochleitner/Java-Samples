#!/bin/bash

cat teil1.json | jq '.sectionList[0].items[].title' 
#for i in 2 3 4 5 6 7 8 9 10 11 12 13; do
for i in {2..13}; do
  cat teil$i.json | jq '.items[].title' 
done
