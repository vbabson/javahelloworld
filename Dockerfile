FROM java:8
COPY src /home/docker/javahelloworld/src
WORKDIR /home/docker/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get update && apt-get install -y vim
ENTRYPOINT ["java", "-cp", "bin" "HelloWorld"]
