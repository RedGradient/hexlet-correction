# FROM eclipse-temurin:19-jdk-alpine
FROM maven:latest

WORKDIR /app

COPY . .
RUN mvn clean package
CMD java -jar -Dspring.profiles.active=prod ./target/typoreporter-*.jar
