cd /usr/local

wget  https://nodejs.org/dist/v8.11.3/node-v8.11.3-linux-x64.tar.xz

tar -xvf node-v8.11.3-linux-x64.tar.xz

rm -f -r node-v8.11.3-linux-x64.tar.xz

mv node-v8.11.3-linux-x64 nodejs

echo 'export NODE_HOME=/usr/local/nodejs' >> /etc/profile

echo 'export PATH=$NODE_HOME/bin:$PATH' >> /etc/profile

source /etc/profile

node -v

npm -v

