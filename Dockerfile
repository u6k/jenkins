FROM docker:dind

# Install
RUN apk update && \
    # Upgrade installed tools
    apk upgrade && \
    # Install tools
    apk --no-cache add \
        bash \
        dpkg \
        openjdk8-jre \
        p7zip \
        python3 \
        curl \
        ttf-dejavu && \
    # Setup python
    update-alternatives --install /usr/bin/python python /usr/bin/python3 1 && \
    update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1 && \
    # Install aws-cli
    pip install awscli && \
    # Install Jenkins
    mkdir -p /opt/jenkins && \
    curl -L -o /opt/jenkins/jenkins.war http://mirrors.jenkins.io/war-stable/latest/jenkins.war

# Setup entrypoint shell
COPY jenkins-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/jenkins-entrypoint.sh

# Setting
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk \
    PATH=/usr/lib/jvm/java-1.8-openjdk/bin:$PATH
VOLUME /root/.jenkins

CMD ["/usr/local/bin/jenkins-entrypoint.sh"]
