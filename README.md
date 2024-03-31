# Test4MAS_Jenkins
This repository contains the code and config required to deploy Jenkins with one of below approach -

1) Jenkins as container on Kubernetes cluster.

This requires more work since the jenkins image used doesn't have multiple files and packages required to execute pipelines. Also, when we run on containers, customized networking is to be considered for adding static or dynamic nodes as Jenins Slaves.

Please refer to https://github.com/vivekcyber/Test4MAS_Jenkins/blob/integration/JenkinsAsCode/roles/jenkins-server/tasks/JenkinsAsContainer_main.yml   for the task definition fiel to deploy Jenkins s container.


2) Jenkins on Linux EC2 - Application can be accessed via https://3.1.23.209:8443 

   Refer to https://github.com/vivekcyber/Test4MAS_Jenkins/blob/integration/JenkinsAsCode/roles/jenkins-server/tasks/main.yml for task definition


   Refer to https://github.com/vivekcyber/Test4MAS_Jenkins/blob/integration/JenkinsAsCode/roles/jenkins-server/files/JenkinsOnEC2/jenkins_setup.sh for the setup script used in installation 
