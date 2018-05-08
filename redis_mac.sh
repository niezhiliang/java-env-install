#!/bin/bash

password="123456"
#安装Redis
brew install redis 

#开机启动redis命令 
ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents

#使用配置文件启动redis server 
redis-server /usr/local/etc/redis.conf

#停止Redis的自启动
#launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.redis.plist

#redis 配置文件的位置 
conf=/usr/local/etc/redis.conf

echo "daemonize yes" >> ${conf}

echo "requirepass ${password}" >> ${conf}


#卸载redis和它的文件 （这里好像有问题，不能卸载）
#brewuninstallredis rm ~/Library/LaunchAgents/homebrew.mxcl.redis.plist

#测试Redis server是否启动
redis-cli 

auth 123456

ping 

exit

#
#
