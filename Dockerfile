# Use the official JDK 17 image for better stability
FROM eclipse-temurin:17-jdk

# Set working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/demo-1.0.0.jar app.jar

# Expose port 9090
EXPOSE 9090

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/app/app.jar", "--server.port=9090"]
