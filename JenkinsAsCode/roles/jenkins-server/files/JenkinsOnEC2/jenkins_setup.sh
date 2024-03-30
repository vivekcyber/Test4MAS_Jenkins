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
