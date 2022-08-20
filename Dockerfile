FROM maven:3.6.0-jdk-11-slim
COPY src /
COPY pom.xml /
RUN mvn -f pom.xml clean package
COPY target/bookstore-example-1.0-SNAPSHOT.war /bookstore-example-1.0-SNAPSHOT.war
ENTRYPOINT ["mvn","jetty:run","-Pproduction","-Djetty.port=8888"]
