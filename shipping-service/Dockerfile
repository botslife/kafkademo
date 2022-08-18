# Original settings from git repo
# FROM openjdk:8-jdk-alpine
# COPY target/shipping-service-async-0.0.1-SNAPSHOT.jar app.jar
# ENTRYPOINT ["java","-jar","-Dspring.profiles.active=docker","/app.jar"]

FROM openjdk:17-alpine as base
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
COPY src ./src
#CMD ["tail", "-f", "/dev/null" ]
CMD ["./mvnw", "spring-boot:run", "-Dspring-boot.run.jvmArguments='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:8000'"]