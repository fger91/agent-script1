#!/bash/shell

#Description: step to install Sonarqube on a centOS server 
#Author: Fger
#Date: 02/19/2023

su - vagrant
sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y

cd /opt
sudo yum install wget -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
 sudo yum install unzip
sudo unzip /opt/sonarqube-9.3.0.51899.zip

sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-x.x/bin/linux-x86-64 
 ./sonar.sh start
 
#open the port 9000 with this command:
sudo firewall-cmd --permanent --add-port=9000/tcp

sudo firewall-cmd --reload
