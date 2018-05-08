# java_env_install
Java环境自动安装脚本    jdk1.8、maven3.5.3、 Tomacat8.0、Mysql 

##### 使用方法

- 给java_install.sh 一个执行权限

 ```
 chmod  777  java_install.sh
 ```
 
 - 然后执行该脚本进行环境安装
 ```
 ./java_install.sh
 ```
##### Mysql 

安装完成后会把mysql自动生成的密码保存在

- 首先登录到mysql中
```
mysql -u root -p
输入上面保存的密码
```
- 修改登录密码
```
set password=password('123456');  
```
- 授权远程登录权限
```
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%'IDENTIFIED BY '123456' WITH GRANT OPTION; 
```

> 完成上面操作就可以用Navicat用root和123456来登录啦

