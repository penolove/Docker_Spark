sudo yum -y install docker
sudo groupadd docker
sudo usermod -aG docker $(whoami)
sudo systemctl start docker
