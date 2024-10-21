# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container at /app
COPY target/test-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that your application listens on
EXPOSE 8080

# Run the JAR file  
ENTRYPOINT ["java", "-jar", "app.jar"]
