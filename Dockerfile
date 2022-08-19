FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn install
RUN mvn compiler:compile
RUN mvn org.apache.maven.plugins:maven-compiler-plugin:compile
RUN mvn org.apache.maven.plugins:maven-compiler-plugin:2.0.2:compile
RUN mvn -f /home/app/pom.xml clean package
