FROM maven:3.6.3-jdk-11-slim
WORKDIR /
COPY pom.xml .
ADD ./var/lib/jenkins/workspace/jenkins-docker/* ./src
RUN ls
EXPOSE 8080
CMD ["mvn","jetty:run"]
