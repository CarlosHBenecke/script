#!/bin/bash
sudo apt update & sudo apt upgrade -y
java -version 
if [ $? = 0 ]; 
then 
echo “java instalado”
else 
echo “A instalação do java se iniciará em seguida.” 
sudo apt install openjdk-17-jre -y 
fi 
sudo apt install docker.io
docker --version
sudo systemctl start docker
sudo systemctl enable docker
sudo docker pull mysql:5.7
docker-compose --version 

if [ $? = 0 ]; 
    then 
        echo “docker-compose instalado”
    else 
        sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose
fi
sudo docker-compose up
sudo docker start bdArcadium
mkdir arcadium
git clone "https://github.com/Arcadium-com/Foodie-Kioskie-Jar.git" "/home/ubuntu/arcadium"
cd /home/ubuntu/arcadium
java -jar foodie-kioskie.jar


