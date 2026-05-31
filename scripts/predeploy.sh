#!/bin/bash
echo "Pre deployment started"

mkdir -p /home/ec2-user/deploy
rm -rf /home/ec2-user/deploy/*

echo "Target directory cleaned"

echo "Installing Amazon Corretto 17"

sudo yum update -y
sudo yum install -y java-17-amazon-corretto-devel

cat <<EOF | sudo tee /etc/profile.d/java.sh
export JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto.x86_64
export PATH=\$JAVA_HOME/bin:\$PATH
EOF

source /etc/profile.d/java.sh

java -version
javac -version

echo "Java installation completed"
