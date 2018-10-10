# Java-Samples

run OpenJDK in Docker with volume
docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp openjdk:7 javac Main.java
