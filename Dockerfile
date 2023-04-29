FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY . .

CMD java -jar -Dspring.profiles.active=prod ./typoreporter-*.jar
