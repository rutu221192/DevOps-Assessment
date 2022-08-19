FROM maven:3.6.3-jdk-11-slim
WORKDIR /
COPY pom.xml .
ADD ./var/lib/jenkins/workspace/jenkins-docker/* ./src
RUN ls
EXPOSE 8080
CMD ["mvn","jetty:run"]

//FROM ubuntu:latest
//LABEL "author"="Rutu"
//ENV DEBIAN_FRONTEND=noninteractive
//RUN apt update && apt install git -y
//RUN apt install apache2 -y
//CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
//WORKDIR /var/www/html
//VOLUME /var/log/apache2
//EXPOSE 8080
//ADD target/* /var/www/html/
//COPY target/* /var/www/html/
