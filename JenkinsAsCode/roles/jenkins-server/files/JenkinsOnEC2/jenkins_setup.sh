#!/bin/sh

wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Download &  Install JDK 21

wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.rpm

yum install jdk-21_linux-x64_bin.rpm -y
# Add required dependencies for the jenkins package
yum install fontconfig -y
yum install jenkins -y
systemctl daemon-reload
systemctl enable jenkins
systemctl start jenkins

# Add Jenkins user to docker group to enable Jenkins pipeline to use docker command

groupadd docker
gpasswd -a jenkins docker

# restart jenkins and docker to reflect above user addition to group

systemctl restat docker
systemctl restart jenkins

# Installation of trivy - Container image scannign tool

rpm -ivh https://github.com/aquasecurity/trivy/releases/download/v0.18.3/trivy_0.18.3_Linux-64bit.rpm
