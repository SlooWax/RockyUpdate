#!/bin/bash
# Pizdec ~By Rathole
echo "Welcome To RockyUpdate"
echo "Right Now We Update Server and Install other packages"
sleep 3s




### Install ###
### Installing wget###
sudo dnf install wget -y             


#Installing Java 17
             wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.rpm
             sudo rpm -ivh jdk-17_linux-x64_bin.rpm -y
             rm -f jdk-17_linux-x64_bin.rpm -y

             #Install EPEL, правда нахуя?
             sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
             
             #Установочка ненужной хуеты для статистики/мониторинга
             sudo dnf install epel-release -y 
             sudo dnf install screen -y 
             sudo dnf install lm_sensors -y 
             sudo dnf install htop -y 
             sudo dnf install stress -y 
             sudo dnf install tar -y
             sudo dnf install neofetch -y
             #Update System again
             sudo dnf update -y
             sudo dnf upgrade -y

             #Setup A Firewall

#Minecraft Server
             sudo firewall-cmd --zone=public --permanent --add-port 25565/tcp
             sudo firewall-cmd --zone=public --permanent --add-port 25565/udp
#Source Based Games
             sudo firewall-cmd --zone=public --permanent --add-port 27015/tcp
             sudo firewall-cmd --zone=public --permanent --add-port 27015/udp
#Apache/nginx Servers
             sudo firewall-cmd --zone=public --permanent --add-port 80/tcp
             sudo firewall-cmd --zone=public --permanent --add-port 443/tcp
             sudo firewall-cmd --reload
     ;;
