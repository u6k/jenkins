FROM openjdk:8-jdk-alpine

RUN apk update

# Install Docker binary
RUN apk add docker

# Install Jenkins
RUN apk add ttf-dejavu

WORKDIR /opt
RUN wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war

# Setting
EXPOSE 8080
VOLUME /root/.jenkins

CMD ["java", "-jar", "/opt/jenkins.war"]
