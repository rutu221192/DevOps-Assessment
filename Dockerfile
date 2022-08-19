FROM maven:3.6.3-jdk-11-slim
WORKDIR /
COPY pom.xml .
ADD ./src/ ./src
RUN ls
EXPOSE 8080
//CMD ["mvn package -Pproduction"]
CMD ["mvn -Djetty.port=8888","jetty:run"]
