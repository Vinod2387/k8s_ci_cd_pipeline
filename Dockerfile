FROM openjdk:11
COPY ./app/target/demo-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
