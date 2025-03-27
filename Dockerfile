FROM openjdk:17-jdk-slim
# Update and upgrade system packages
RUN apt-get update && apt-get upgrade -y && apt-get clean
WORKDIR /app
COPY target/demo-1.0.0.jar app.jar
EXPOSE 9090
CMD ["java", "-jar", "app.jar", "--server.port=9090"]
