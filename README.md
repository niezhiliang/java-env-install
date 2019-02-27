# java_env_install
Java环境自动安装脚本    jdk1.8、maven3.5.3、 Tomacat8.0  docker  docker-compose nodejs pm2

> 如果脚本安装完毕，`java -version` `mvn -v` 显示没有命令，请断开服务器连接，重新连接下应该就好了。

##### 使用方法

 
 - 执行该脚本进行环境安装 maven仓库自动切换为阿里云仓库
 ```
 ./java-env.sh(如果安装完了jdk 控制台没有显示安装信息,`重新连接下终端` 就好了)
 ```
 
 - 执行docker-env.sh安装 docker和docker-compose
 
  ```
  ./docker-env.sh
  ```
  
 - 执行node_env.sh进行nodejs 和npm环境安装自动配置淘宝镜像
 ```
 ./node-env.sh
 ```
  安装pm2

  npm install pm2 -g

  通过pm2 start命令启动nodejs项目

  pm2 start app.js

  查看pm2管理的项目列表命令

  pm2 list

  查看某个项目的信息

  pm2 show 0 // 查看id为0的项目的信息

  停止pm2启动的项目命令

  pm2 stop 0 // 停止id为0的项目

  pm2 stop all // 停止所有项目

  重启某个项目

  pm2 restart 0 // 重启id为0的项目

  查看日志

  pm2 logs


