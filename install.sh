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

sudo crontab -l > starttc

sudo echo "@reboot /opt/tomcat/apache-tomcat-7.0.32/bin/startup.sh" >> starttc

sudo crontab starttc

sudo yum update –y

sudo yum install httpd -y

sudo systemctl start httpd.service

 sudo chkconfig --level 345 httpd on

sudo tee /etc/yum.repos.d/mariadb.repo<<EOF
[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/10.5/centos7-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1
EOF

sudo yum makecache

sudo yum install MariaDB-server MariaDB-client -y

sudo systemctl enable mariadb

sudo yum install amazon-linux-extras –y

sudo amazon-linux-extras enable php7.4 -y

sudo yum clean metadata

sudo yum install php php-common php-pear -y

sudo yum install php-{cgi,curl,mbstring,gd,mysqlnd,gettext,json,xml,fpm,intl,zip} -y

sudo curl -sS https://getcomposer.org/installer | sudo php

sudo mv composer.phar /usr/local/bin/composer

sudo ln -s /usr/local/bin/composer /usr/bin/composer

sudo chmod 777 /var/www/html

rm starttc


