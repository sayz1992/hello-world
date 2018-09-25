#!/bin/bash
ENVIRONMENT=$1
if [ $ENVIRONMENT = "QA" ];then
        sshpass -p "ec2-user" scp target/ec2-userkart.war ec2-user@172-31-1-55:/home/ec2-user/Distros/apache-tomcat-8.5.34/webapps
        sshpass -p "ec2-user" ssh ec2-user@172-31-1-55 "JAVA_HOME=/home/ec2-user/Distros/jdk1.8.0_151" "/home/ec2-user/Distros/apache-tomcat-8.5.23/bin/startup.sh"

elif  [ $ENVIRONMENT = "SIT" ];then
        sshpass -p "ec2-user" scp target/ec2-userkart.war ec2-user@172.31.31.221:/home/ec2-user/Distros/apache-tomcat-8.5.34/webapps
        sshpass -p "ec2-user" ssh ec2-user@172.31.31.221 "JAVA_HOME=/home/ec2-user/Distros/jdk1.8.0_151" "/home/ec2-user/Distros/apache-tomcat-8.5.23/bin/startup.sh"
fi
