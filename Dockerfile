# Use the official JDK 17 image for better stability
FROM eclipse-temurin:17-jdk

# Set working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/demo-1.0.0.jar /app/app.jar

# Expose port 9090 (for documentation purposes)
EXPOSE 9090


# Run the Spring Boot application
CMD ["java", "-jar", "/app/app.jar", "--server.port=9090", "--server.address=0.0.0.0"]


