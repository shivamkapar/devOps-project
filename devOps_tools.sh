sudo apt-get remove -y docker docker-engine docker.io containerd runc;
sudo apt-get update
sudo apt-get install \
  ca-certificates \
  curl \
  gnupg \
  lsb-release;
cd /;
sudo rm -rf /usr/share/keyrings/docker-archive-keyring.gpg;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg;
sudo apt-get update -y && apt-get install -y docker-ce docker-ce-cli containerd.io;



sudo apt install openjdk-11-jdk;

curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install -y jenkins;



sudo apt-get install -y nginx;
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add - ;
sudo apt-get install apt-transport-https;
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee –a /etc/apt/sources.list.d/elastic-7.x.list ;
sudo apt update;
sudo apt-get install -y elasticsearch;
sudo apt-get install -y kibana;
sudo apt-get install -y logstash;
sudo apt-get install -y filebeat;





