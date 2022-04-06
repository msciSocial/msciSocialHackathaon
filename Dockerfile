FROM openjdk:11

COPY target/social-0.0.1-SNAPSHOT.jar app.jar
RUN mvn package
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app.jar"]