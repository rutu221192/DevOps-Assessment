FROM openjdk:11-jre-slim
COPY target/bookstore-example-1.0-SNAPSHOT.war /usr/local/lib/bookstore-example-1.0-SNAPSHOT.war
RUN cd /usr/local/lib/
EXPOSE 8888
ENTRYPOINT ["java","Djetty.port=8888","jetty:run"]
