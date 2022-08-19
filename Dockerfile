FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/bookstore-example-1.0-SNAPSHOT.war /usr/local/lib/demo.war
EXPOSE 8888
ENTRYPOINT ["java","-war,"/usr/local/lib/demo.war"]
