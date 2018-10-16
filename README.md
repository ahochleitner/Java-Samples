# Java-Samples

run OpenJDK in Docker with volume
docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp openjdk:7 javac Main.java
docker run --rm -it -v "$PWD":/usr/src/myapp -w /usr/src/myapp openjdk:7 bash

-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap


kubectl run busybox --image=busybox --restart=Never --tty -i  --limits cpu=500m,memory=1Gi


kubectl run jdk --image=openjdk:8 --restart=Never --tty -i --limits cpu=500m,memory=1Gi
kubectl run jdk --image=openjdk:8 --restart=Always --tty -i --limits cpu=500m,memory=512Mi

kubectl delete pod jdk

kubectl run --restart=Always #  creates rc
kubectl run --restart=Never #  creates bare pod with restart=never
kubectl run --restart=OnFailure # creates a Job.
