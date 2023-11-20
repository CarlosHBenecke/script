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
#configurar banco antes de iniciar o java para inserir no banco de dados
mkdir arcadium
wget "https://github.com/Arcadium-com/Foodie-Kioskie-Jar/blob/main/foodie-kioskie.jar" "/home/ubuntu/arcadium"
# git clone "https://github.com/Arcadium-com/Foodie-Kioskie-Jar.git" "/home/ubuntu/arcadium"
cd /home/ubuntu/arcadium
java -jar foodie-kioskie.jar


