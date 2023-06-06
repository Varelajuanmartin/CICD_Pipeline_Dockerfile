# CICD_Pipeline_Dockerfile

In Jenkins image:
-Installed Docker
-Installed Kubectl
-Installed AWS CLI
-Installed Ansible

to run, use command
docker run -d -it -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home jenkins
