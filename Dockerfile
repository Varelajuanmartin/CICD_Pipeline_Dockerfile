FROM jenkins/jenkins:lts-jdk11

USER root

# INSTALL ANSIBLE

RUN apt-get update && \
   apt-get install -y gcc python-dev && \
   apt-get install python3-pip -y && \
   pip3 install --upgrade pip && \
   pip3 install ansible

USER jenkins
