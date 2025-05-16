# Use a lightweight Java image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from Gradle build (adjust name if different)
COPY build/libs/*.jar app.jar

# Expose port 8080 (Spring Boot default)
EXPOSE 8082

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
