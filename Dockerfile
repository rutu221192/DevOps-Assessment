# start by pulling the python image
#FROM tomcat:3.8-alpine

# copy the requirements file into the image
#COPY ./requirements.txt /app/requirements.txt

# switch working directory
#WORKDIR /app

# install the dependencies and packages in the requirements file
#RUN pip install -r requirements.txt

# copy every content from the local file to the image
#COPY . /app
#COPY index.html /app/templates/

# configure the container to run in an executed manner
#ENTRYPOINT [ "python" ]

#CMD ["view.py" ]

#FROM openjdk:8
#ADD target/my-maven-docker-project.jar my-maven-docker-project.jar
#ENTRYPOINT ["java", "-jar","my-maven-docker-project.jar"]
FROM tomcat:8.0
MAINTAINER Vipin Kumar
WORKDIR /opt
COPY ./DevOps-Assessment /opt/DevOps-Assessment
RUN mvn clean package
COPY **/opt/DevOps-Assessment.war /usr/local/tomcat/webapps/
EXPOSE 8080
