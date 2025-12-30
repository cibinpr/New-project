# Use an official OpenJDK 17 runtime as the base image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory inside the container
WORKDIR /app

# Copy the JAR file from target folder into the container
COPY target/helloworld-1.0-SNAPSHOT.jar /app/helloworld.jar

# Expose port (optional for this console app)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "helloworld.jar"]
