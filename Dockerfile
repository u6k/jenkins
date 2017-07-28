FROM openjdk:8

# Install p7zip, awscli
RUN apt-get update && \
    apt-get install -y p7zip-full awscli build-essential && \
    apt-get clean

# Install Docker, docker-compose
RUN curl -sSL https://get.docker.com/ | sh && \
    curl -L https://github.com/docker/compose/releases/download/1.14.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

# Install Jenkins
RUN cd /opt && \
    curl -OL http://mirrors.jenkins.io/war-stable/latest/jenkins.war

# Setting
EXPOSE 8080
VOLUME /root/.jenkins

CMD ["java", "-jar", "/opt/jenkins.war"]
