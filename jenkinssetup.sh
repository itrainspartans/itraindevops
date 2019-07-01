# Install Java
sudo apt update
sudo apt install openjdk-8-jre-headless -y
java -version
#
#Install Jenkins
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins
#
#Install Maven
sudo apt update
sudo apt install maven -y
mvn -version
#
# change default port of jenkins from 8080 to 8888
sudo sed -i 's/8080/8888/' /etc/default/jenkins
#
# To update new port need to restart jenkins
sudo service jenkins stop
sudo service jenkins start
# to execute this script use below command
#curl -sSL https://raw.githubusercontent.com/itrainspartans/itraindevops/master/jenkinssetup.sh | sh
