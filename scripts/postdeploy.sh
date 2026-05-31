#!/bin/bash

cd /home/ec2-user/deploy || exit 1

export JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto.x86_64
export PATH=$JAVA_HOME/bin:$PATH

echo "Post deployment started"



echo "Running Java program"
java -cp cs_java/src cs_java.Wish

echo "Post deployment completed"
