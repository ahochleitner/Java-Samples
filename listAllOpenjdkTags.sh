#!/bin/bash

wget -q https://registry.hub.docker.com/v1/repositories/openjdk/tags -O - | sed -e 's/[][]//g' -e 's/"//g' -e 's/ //g' | tr '}' '\n'  | awk -F: '{print $3}'
