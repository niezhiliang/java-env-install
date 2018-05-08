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
##### Mysql还在开发中


##### Mac Redis （默认开机自启）
- 给redis_mac.sh一个执行权限，默认生成的登录密码是123456 如果想自己改的话，改redis_mac.sh第一行的password就好

 ```
 chmod  777  redis_mac.sh
 ```
 
 - 然后执行该脚本进行环境安装
 ```
 ./redis_mac.sh
 ```
 脚本安装完后 执行
 - redis-cli 
 - auth  你的密码（没改脚本的话为123456）
 - ping  如果输出 PONG 表示安装并运行成功
 
