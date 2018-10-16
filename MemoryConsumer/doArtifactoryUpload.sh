#!/bin/bash

#docker login lkw-dev-registry.artifactory.prod.lkw-walter.com

docker tag memory_consumer:latest lkw-dev-registry.artifactory.prod.lkw-walter.com/andy/memory_consumer:latest

docker push lkw-dev-registry.artifactory.prod.lkw-walter.com/andy/memory_consumer:latest

#docker pull container-repo.artifactory.test.lkw-walter.com/zdom/wurm-auth:latest
#docker run -it -d --network=host -p 8001:8080 -p 10001:9990 -h=wurm-auth --name wurm-auth container-repo.artifactory.test.lkw-walter.com/zdom/wurm-auth
