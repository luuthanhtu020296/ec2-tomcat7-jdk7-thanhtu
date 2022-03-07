#!/bin/bash

wget https://files-cdn.liferay.com/mirrors/download.oracle.com/otn-pub/java/jdk/7u80-b15/jdk-7u80-linux-x64.tar.gz

sudo mkdir /usr/lib/jvm

sudo tar -C /usr/lib/jvm -xzf jdk-7u80-linux-x64.tar.gz

sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.7.0_80/jre/bin/java 1

wget https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.32/bin/apache-tomcat-7.0.32.tar.gz

sudo mkdir /opt/tomcat

sudo tar -C /opt/tomcat -xzf apache-tomcat-7.0.32.tar.gz

sudo tee  ~/.bashrc <<EOF
export CATALINA_HOME=/opt/tomcat/apache-tomcat-7.0.32
export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_80/jre/bin/java
EOF

. ~/.bashrc

sudo $CATALINA_HOME/bin/startup.sh
