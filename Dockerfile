# For Java 8, try this
# FROM openjdk:8-jdk-alpine

# For Java 11, try this
FROM adoptopenjdk/openjdk11:alpine-jre


WORKDIR /opt/app

ARG JAR_FILE=target/customer-service.jar

# cp spring-boot-web.jar /opt/app/customer-service.jar
COPY ${JAR_FILE} customer-service.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","customer-service.jar"]

#docker network create -d bridge mybridge
#docker build --platform=linux/amd64 -t customer-service .
#docker run -d -p 8088:8088 --network=mybridge  -t customer-service