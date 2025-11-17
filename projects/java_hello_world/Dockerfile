FROM ubuntu:22.04

WORKDIR /app

COPY Hello.java /app

RUN apt update && apt upgrade

RUN apt install -y openjdk-21-jdk

RUN javac Hello.java

CMD ["java", "Hello"]
