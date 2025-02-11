#!/bin/sh
service qli stop
sudo apt-get install cpulimit jq -y
wget https://raw.githubusercontent.com/danielluis1921/CRP/main/pre-install-uam.sh
sudo chmod 777 pre-install-uam.sh
./pre-install-uam.sh


wget https://raw.githubusercontent.com/danielluis1921/CRP/main/generate-uam.sh
sudo chmod 777 generate-uam.sh
./generate-uam.sh 05D67162AC6E3701AC183D614F53C6A2D58D0BC063B1F16217969DD4C6263609 2

sudo apt-get -y install w3m w3m-img
#watch -n 1 "curl -s 127.0.0.1:17100 | w3m -T text/html"
#docker logs uam_1
