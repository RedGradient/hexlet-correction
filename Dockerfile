FROM eclipse-temurin:19-jdk-alpine

WORKDIR /app

COPY . .

CMD java -jar -Dspring.profiles.active=prod ./typoreporter-*.jar
