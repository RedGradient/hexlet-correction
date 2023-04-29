# FROM eclipse-temurin:19-jdk-alpine
FROM maven:latest

WORKDIR /app

COPY . .
RUN mvn clean package
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=prod", "./target/typoreporter-*.jar"]
