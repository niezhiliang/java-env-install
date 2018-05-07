#!/bin/bash

#安装maven
cd ~

cd Public

mkdir java_env

cd java_env 

curl -O http://mirrors.hust.edu.cn/apache/maven/maven-3/3.5.3/binaries/apache-maven-3.5.3-bin.tar.gz

tar -xzvf apache-maven-3.5.3-bin.tar.gz

rm -f -r  apache-maven-3.5.3-bin.tar.gz

cd ~

if [ ! -e .bash_profile  ]; then

	touch .bash_profile

fi

cd Public/java_env/apache-maven-3.5.3

path=`pwd`

cd ~

echo "export PATH=${path}/bin:$PATH" >> .bash_profile

source .bash_profile
#安装tomcat
cd ~

cd Public/

mkdir tomcat

cd tomcat/

#下载tomacat包
curl -O http://mirror.bit.edu.cn/apache/tomcat/tomcat-8/v8.5.31/bin/apache-tomcat-8.5.31.tar.gz

tar -xzvf apache-tomcat-8.5.31.tar.gz

rm -f -r  apache-tomcat-8.5.31.tar.gz

cd  apache-tomcat-8.5.31/bin/

./startup.sh


mvn -v



