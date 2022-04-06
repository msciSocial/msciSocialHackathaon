FROM mcr.microsoft.com/java/maven:8u192-zulu-debian9 AS build-env
WORKDIR /app
COPY . /app
RUN mvn package
COPY target/social-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app.jar"]