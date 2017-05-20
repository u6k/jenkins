FROM openjdk:8

# Install Docker binary, p7zip, awscli
RUN apt-get update && \
    apt-get install -y docker.io p7zip-full awscli ttf-dejavu && \
    apt-get clean

# Install Jenkins
RUN cd /opt && \
    curl -OL http://mirrors.jenkins.io/war-stable/latest/jenkins.war

# Setting
EXPOSE 8080
VOLUME /root/.jenkins

CMD ["java", "-jar", "/opt/jenkins.war"]
