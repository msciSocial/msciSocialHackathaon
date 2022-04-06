FROM openjdk:11
WORKDIR /app
COPY . /app
RUN mvn package
COPY target/social-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app.jar"]