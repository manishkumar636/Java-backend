FROM eclipse-temurin:17-jdk-alpine
VOLUME /*
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]