
#to
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








