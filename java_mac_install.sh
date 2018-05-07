#!/bin/bash

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

echo "export MAVEN_HOME=${path}" >> .bash_profile

echo "export PATH=${MAVEN_HOME}/bin:$PATH" >> .bash_profile

source .bash_profile

mvn -v



