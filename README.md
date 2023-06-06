# CICD_Pipeline_Dockerfile

0) In Jenkins image
1) Installed Docker
2) Installed Kubectl
3) Installed Ansible

to run, use command
docker run -d -it -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home jenkins
