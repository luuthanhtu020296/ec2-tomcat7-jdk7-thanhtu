# ec2-tomcat7-jdk7


https://readlearncode.com/cloud/amazon-free-usage-tier-installing-tomcat-7-on-an-ec2-linux-instance/
https://linuxconfig.org/oracle-java-jdk-7-on-ubuntu-linux-source-or-rpm-installation
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
@reboot /`PATH_TO_WHERE_TOMCAT_INSTALLED`/bin/startup.sh
export JAVA_HOME
PATH=$JAVA_HOME/bin:$PATH
export PATH

https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.32/bin/apache-tomcat-7.0.32.tar.gz

sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.7.0_80/jre/bin/java 1


export CATALINA_HOME=/opt/tomcat/apache-tomcat-7.0.32
export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_80/jre/bin/java
https://www.liquidweb.com/kb/how-to-install-apache-tomcat-7-on-ubuntu-16-04/

https://viblo.asia/p/build-a-simple-rest-api-in-php-924lJqrbZPM

# Set auto start tomcat + apache

sudo crontab -e

@reboot /opt/tomcat/apache-tomcat-7.0.32/bin/startup.sh

sudo chkconfig httpd on

# fute im
https://stackoverflow.com/questions/58216549/how-to-retrieve-secret-manager-data-in-buildspec-yaml

https://askubuntu.com/questions/420981/how-do-i-save-terminal-output-to-a-file
