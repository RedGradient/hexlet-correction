FROM maven:latest

WORKDIR /app

COPY . .
RUN mvn clean package
EXPOSE 8080:8080
ENTRYPOINT java -jar -Dspring.profiles.active=prod ./target/typoreporter*.jar
