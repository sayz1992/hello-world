#!/bin/bash
ENVIRONMENT=$1
if [ $ENVIRONMENT = "QA" ];then
        sshpass -p "Swagat@963" scp target/gamutkart.war sayz@172.17.0.2:/home/sayz/apache-tomcat-8.5.34/webapps
        sshpass -p "Swagat@963" ssh sayz1992@172.17.0.2 "JAVA_HOME=/home/ec2-user/Distros/jdk1.8.0_151" "/home/ec2-user/Distros/apache-tomcat-8.5.23/bin/startup.sh"

elif  [ $ENVIRONMENT = "SIT" ];then
        sshpass -p "ec2-user" scp target/gamutkart.war ec2-user@172.31.31.221:/home/ec2-user/Distros/apache-tomcat-8.5.34/webapps
        sshpass -p "ec2-user" ssh ec2-user@172.31.31.221 "JAVA_HOME=/home/ec2-user/Distros/jdk1.8.0_151" "/home/ec2-user/Distros/apache-tomcat-8.5.23/bin/startup.sh"
fi
