#!/bin/bash

mkdir /java

yum -y install wget

yum install glibc.i686

echo 'begin install Jdk1.8....'

wget -O jdk-8u144-linux-i586.tar.gz http://om40sen9v.bkt.clouddn.com/14ca4f70f43e41f4a593fee6e56a1541.gz

tar -xzvf jdk-8u144-linux-i586.tar.gz

rm -f -r jdk-8u144-linux-i586.tar.gz

mv  jdk1.8.0_144  /java/jdk1.8

echo 'begin download Maven ....'

wget http://mirrors.hust.edu.cn/apache/maven/maven-3/3.5.3/binaries/apache-maven-3.5.3-bin.tar.gz

tar -xzvf apache-maven-3.5.3-bin.tar.gz

rm -f -r  apache-maven-3.5.3-bin.tar.gz

mv  apache-maven-3.5.3 /java/apache-maven-3.5.3


echo 'export JAVA_HOME=/java/jdk1.8' >> /etc/profile

echo 'export  CLASSPATH=$:CLASSPATH:$JAVA_HOME/lib/' >> /etc/profile

echo 'export  PATH=$PATH:$JAVA_HOME/bin:/java/apache-maven-3.5.3/bin' >> /etc/profile

source /etc/profile
