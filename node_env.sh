cd /usr/local

wget  https://nodejs.org/dist/v8.11.3/node-v8.11.3-linux-x64.tar.xz

tar -xvf node-v8.11.3-linux-x64.tar.xz

rm -f -r node-v8.11.3-linux-x64.tar.xz

mv node-v8.11.3-linux-x64 nodejs

#配置环境变量
echo 'export NODE_HOME=/usr/local/nodejs' >> /etc/profile

echo 'export PATH=$NODE_HOME/bin:$PATH' >> /etc/profile

source /etc/profile

#安装淘宝镜像
npm install -g cnpm --registry=https://registry.npm.taobao.org
 
node -v

npm -v

