#auto install explorer and setup pre-req



sudo apt-get update -y
sudo apt-get upgrade -y

cd ~ && curl -sL https://deb.nodesource.com/setup_17.x -o /tmp/nodesource_setup.sh 
sudo bash /tmp/nodesource_setup.sh 
sudo apt install nodejs -y

curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add - 


echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list 


#monogodb
sudo apt update -y
sudo apt install mongodb-org -y
sudo systemctl start mongod.service 
sudo systemctl status mongod 
sudo systemctl enable mongod


#clone explorer
git clone https://github.com/team-exor/eiquidus explorer
cd explorer
npm install --only=prod
cp ./settings.json.template ./settings.json

