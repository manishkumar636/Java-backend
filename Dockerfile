# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-slim

# Set the working directory in the container
WORKDIR /test

# Copy the packaged JAR file into the container at /test
COPY target/test-0.0.1-SNAPSHOT.jar test.jar

# Expose the port that your application listens on
EXPOSE 8080

# Run the JAR file  
ENTRYPOINT ["java", "-jar", "test.jar"]
