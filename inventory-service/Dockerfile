FROM maven:3.8.3-openjdk-17
WORKDIR /app
COPY pom.xml ./
COPY src ./src
CMD ["mvn", "spring-boot:run","-Dspring-boot.run.profiles=dev", "--debug"]
#CMD ["tail", "-f", "/dev/null" ]
#CMD ["./mvnw", "spring-boot:run","-Dspring-boot.run.profiles=dev"]