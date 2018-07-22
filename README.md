# java_env_install
Java环境自动安装脚本    jdk1.8、maven3.5.3、 Tomacat8.0、Mysql 

##### 使用方法

 
 - 执行该脚本进行环境安装 maven仓库自动切换为阿里云仓库
 ```
 ./java_install.sh
 ```
 
  - 执行node_env.sh进行nodejs 和npm环境安装自动配置淘宝镜像
 ```
 ./node_env.sh
 ```
 
##### Mysql 

mysql安装有点麻烦，所以在执行脚本之前确定把服务器上面的mysql删除干净啦，
上一篇彻底删除mysql的博客

https://blog.csdn.net/qq_38082304/article/details/80237325

- 安装完成后会是这个样子 初始密码用红色的框框标记出来啦(后期会将该密码输出到某文件中)
<img src="https://github.com/niezhiliang/java_env_install/blob/master/pic/success.png" width = "900" height = "130" alt="成功" align=center />

- 如果启动的失败请参考下面这篇博客解决

<img src="https://github.com/niezhiliang/java_env_install/blob/master/pic/fail.png" width = "900" height = "130" alt="失败" align=center />
> 我用这个脚本装了不下10次，每次都是后台有mysql的进程没关掉，导致启动失败（启动失败首先考虑是不是又mysql的进程没关）

https://blog.csdn.net/zalion/article/details/9274263



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

