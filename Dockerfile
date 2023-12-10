FROM openjdk:22-jdk-bullseye

RUN mkdir -p /home/petclinic/

COPY ./target/spring-petclinic-3.1.0-SNAPSHOT.jar /home/petclinic/

WORKDIR /home/petclinic/

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "spring-petclinic-3.1.0-SNAPSHOT.jar"]
