# Use an official OpenJDK runtime as a parent image
FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY target/test-0.0.1-SNAPSHOT.jar test.jar
# EXPOSE 8080
ENTRYPOINT ["java","-jar","/test.jar"]

