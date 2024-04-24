FROM eclipse-temurin:19-alpine
VOLUME /tmp
EXPOSE 8080
WORKDIR /backend
ARG JAR_FILE=./target/spring-boot-rest-api-postgresql-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} cloud-computing.jar
ENTRYPOINT ["java","-jar","cloud-computing.jar"]
