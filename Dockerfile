FROM jenkins/jenkins:lts-jdk11

USER root

# INSTALL DOCKER

RUN apt-get update -qq \
    && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
RUN apt-get update  -qq \
    && apt-get -y install docker-ce
RUN usermod -aG docker jenkins

# INSTALL ANSIBLE

RUN apt-get update && \
   apt-get install -y gcc python-dev && \
   apt-get install python3-pip -y && \
   pip3 install --upgrade pip && \
   pip3 install ansible

USER jenkins
