FROM maven:3.6.0-jdk-11-slim
COPY . /
RUN mvn install
RUN mvn package -Pproduction
ENTRYPOINT ["mvn","jetty:run","-Djetty.port=8888"]
