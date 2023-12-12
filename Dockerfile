FROM openjdk:22-jdk-bullseye

WORKDIR /home/petclinic

COPY ./target/spring-petclinic-3.2.0-SNAPSHOT.jar .

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "spring-petclinic-3.2.0-SNAPSHOT.jar"]
