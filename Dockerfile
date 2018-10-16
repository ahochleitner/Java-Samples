FROM java:8u111
ADD Main.java Main.java
ADD MemEat.java  MemEat.java
ADD OOM.java OOM.java
ADD runMemEat.sh runMemEat.sh
ADD run.sh run.sh
ADD runShellCommands.sh runShellCommands.sh
#RUN ["javac", "Main.java"]
#RUN ["java", "Main"]
#RUN ["javac", "MemEat.java"]
ENTRYPOINT ["bash","runMemEat.sh"]
