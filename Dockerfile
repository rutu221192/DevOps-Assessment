FROM maven:3.6.3-jdk-11-slim
WORKDIR /
COPY pom.xml .
ADD ./src/ ./src
RUN ls
RUN mvn package -Pproduction
RUN mvn -Djetty.port=8888 jetty:run
