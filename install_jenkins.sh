#!/bin/bash

## ? Install jenkins

IP=$(hostname -I | awk '{print $2}')

echo "START - install jenkins - "$IP

echo "[1]: install utils & ansible"
apt-get update -qq >/dev/null
apt-get install -qq -y git sshpass wget ansible gnupg2 curl >/dev/null


echo "[2]: install java & jenkins"
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt-get update -qq >/dev/null
apt-get install -qq -y default-jre jenkins >/dev/null
systemctl enable jenkins
systemctl start jenkins



echo "END - install jenkins"
