# ec2-tomcat7-jdk7


https://readlearncode.com/cloud/amazon-free-usage-tier-installing-tomcat-7-on-an-ec2-linux-instance/

https://files-cdn.liferay.com/mirrors/download.oracle.com/otn-pub/java/jdk/7u80-b15/jdk-7u80-linux-x64.tar.gz

mkdir java

sudo cp -r jdk1.7.0_80/ /usr/bin/java/

/usr/local/jdk1.7.0_80
JAVA_HOME=/usr/local/jdk1.7.0_80/

ubuntu 

sudoedit /etc/apt/sources.list

if you really want to install JDK7, add these in your /etc/apt/sources.list file,

deb http://archive.ubuntu.com/ubuntu/ trusty main restricted universe multiverse 
deb http://archive.ubuntu.com/ubuntu/ trusty-security main restricted universe multiverse 
deb http://archive.ubuntu.com/ubuntu/ trusty-updates main restricted universe multiverse 
deb http://archive.ubuntu.com/ubuntu/ trusty-proposed main restricted universe multiverse 
deb http://archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse

export JAVA_HOME
PATH=$JAVA_HOME/bin:$PATH
export PATH

https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.32/bin/apache-tomcat-7.0.32.tar.gz
