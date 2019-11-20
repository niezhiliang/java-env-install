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

pip install more-itertools==5.0.0

sudo pip install --upgrade pip

pip install docker-compose
