FROM openjdk:8-jdk-alpine

RUN apk update && \
    apk add curl

# Install Docker binary
RUN apk add docker

# Install Jenkins
RUN apk add ttf-dejavu

WORKDIR /opt
RUN curl -OL http://mirrors.jenkins.io/war-stable/latest/jenkins.war

# Install p7zip
RUN apk add p7zip

# Install awscli
RUN apk add python2 && \
    curl -OL https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    pip install awscli

# Setting
EXPOSE 8080
VOLUME /root/.jenkins

CMD ["java", "-jar", "/opt/jenkins.war"]
