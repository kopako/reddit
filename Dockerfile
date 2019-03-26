FROM openjdk:8-slim
COPY build/libs/reddit*.jar /application/app.jar
WORKDIR /application
ENTRYPOINT ["java", "-jar", "app.jar"]