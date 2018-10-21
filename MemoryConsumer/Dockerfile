FROM openjdk:9

ADD MemoryConsumer.java /opt/local/jars/MemoryConsumer.java
ADD memory_consumer.jar /opt/local/jars/memory_consumer.jar
ADD runMemoryConsumer.sh /opt/local/jars/runMemoryConsumer.sh
ADD listThreads.sh /opt/local/listThreads.sh

#CMD java $JVM_OPTS -cp /opt/local/jars/memory_consumer.jar MemoryConsumer
CMD bash /opt/local/jars/runMemoryConsumer.sh
