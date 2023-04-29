FROM maven:latest

WORKDIR /app

COPY . .

RUN ./mvnw clean package

CMD java -jar -Dspring.profiles.active=prod ./target/typoreporter-*.jar
