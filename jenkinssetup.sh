#Install Default JDK available and it is 1.11.0
sudo apt-get update
sudo apt-get install default-jdk -y
java -version
sudo chmod 777 /etc/environment
echo JAVA_HOME="/usr/lib/jvm/java-1.11.0-openjdk-amd64" >> /etc/environment
source /etc/environment
echo $JAVA_HOME


#Install Jenkins
cd ~
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt-get update
sudo apt-get install jenkins -y
sudo systemctl status jenkins

#Install Maven
sudo apt-get update -y
sudo apt-get upgrade -y
cd /opt
sudo wget https://www-eu.apache.org/dist/maven/maven-3/3.6.1/binaries/apache-maven-3.6.1-bin.tar.gz
sudo tar -xvzf apache-maven-3.6.1-bin.tar.gz
sudo rm apache-maven-3.6.1-bin.tar.gz
sudo mv apache-maven-3.6.1 maven
apt install maven 3.6.1
sudo touch /etc/profile.d/mavenenv.sh
sudo chmod 777 /etc/profile.d/mavenenv.sh
echo "export PATH=/opt/maven/bin:$"PATH"" >> /etc/profile.d/mavenenv.sh	
apt install maven 3.6.1
mvn --version
# to execute this script use below command
#curl -sSL https://raw.githubusercontent.com/itrainspartans/itraindevops/master/jenkinssetup.sh | sh

