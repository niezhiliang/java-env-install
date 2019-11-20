sudo yum update -y

yum -y install docker-io

service docker start

if [ -e "/etc/docker/daemon.json" ]; then
  rm -f -r /etc/docker/daemon.json
fi

touch /etc/docker/daemon.json

echo '{
  "registry-mirrors": ["https://2wdsun7e.mirror.aliyuncs.com"]
}' >> /etc/docker/daemon.json

systemctl enable docker

service docker restart

sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
