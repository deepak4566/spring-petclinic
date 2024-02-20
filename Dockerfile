FROM openjdk:22-jdk-bullseye

WORKDIR /home/petclinic

COPY ./target/spring-petclinic-3.2.0-SNAPSHOT.jar .

EXPOSE 8080

ENV MYSQL_URL=""  # Default value, can be overridden at runtime

ENTRYPOINT ["java", "-jar", "spring-petclinic-3.2.0-SNAPSHOT.jar", "--spring.profiles.active=mysql", "--spring.datasource.url=${MYSQL_URL}"]
