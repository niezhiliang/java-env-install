cd ~

wget https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.21-linux-glibc2.12-x86_64.tar.gz
lc_messages

if [ -e "/root/mysql-5.7.21-linux-glibc2.12-x86_64.tar.gz" ]; then

	 tar -xzvf mysql-5.7.21-linux-glibc2.12-x86_64.tar.gz

	 rm -f -r mysql-5.7.21-linux-glibc2.12-x86_64.tar.gz

	 mv mysql-5.7.21-linux-glibc2.12-x86_64 /usr/local/mysql
fi



#检查库文件是否有删除，若有便删除（linux系统自带的）
 rpm -qa | grep mysql


#检查mysql组和用户是否存在，如无创建

user=$(cat /etc/group | grep mysql )
if [ ! $user ]; then

	 groupadd mysql

	#useradd -r参数表示mysql用户是系统用户，不可用于登录系统
	 useradd -r -g mysql mysql
fi

cd /usr/local/mysql/

#创建data文件夹
if [ ! -d /usr/local/mysql/data ]; then

	mkdir data
fi

cd ..

#更改mysql目录下所有的目录及文件夹所属组合用户
chown -R mysql mysql/

chgrp -R mysql mysql/

cd mysql/
  #tl!reWPhQ2k<

cd bin/

#安装和初始化数据库 并把密码文件保存到mysqlpwd.txt中
#./mysqld --initialize --user=mysql --basedir=/usr/local/mysql --datadir=/usr/local/mysql/data 
mysqlpwd=$(./mysqld --initialize --user=mysql --basedir=/usr/local/mysql/ --datadir=/usr/local/mysql/data/ --lc_messages_dir=/usr/local/mysql/share --lc_messages=en_US)

touch /java/mysqlpwd.txt

echo ${mysqlpwd} >> /java/mysqlpwd.txt

#配置my.cnf 
#接下来进入/usr/local/mysql/support-files/目录下 
#查看是否存在my-default.cnf文件，如果存在直接copy到/etc/my.cnf文件中
cd /usr/local/mysql

if [ -e /usr/local/mysql/support-files/my-default.cnf ];then
	cp -a ./support-files/my-default.cnf /etc/my.cnf
else
#如果不存在my-default.cnf文件,则在/etc/目录下创建my.cnf,并写入以下内容
	touch  /etc/my.cnf
	echo '#[mysql]' >> /etc/my.cnf  
	echo '#basedir=/java/mysql_5.7.17/' >> /etc/my.cnf   
	echo '#datadir=/java/mysql_5.7.17/data/' >> /etc/my.cnf 

fi

#启动服务
cd /usr/local/mysql

cd bin/

./mysqld_safe --user=mysql &

#将mysqld服务加入开机自启动项。 
cd /usr/local/mysql/support-files

cp mysql.server /etc/init.d/mysql 

chmod +x /etc/init.d/mysql 

chkconfig --add mysql 


cd /usr/local/mysql

cd bin/
#会报错
service mysql start

ln -s /usr/local/mysql/bin/mysql /usr/bin

#解决
#rm -f -r  /etc/my.cnf 

#/etc/init.d/mysql start 

