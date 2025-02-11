#!/bin/sh
service qli stop
sudo apt-get install cpulimit jq -y
wget https://raw.githubusercontent.com/danielluis1921/CRP/main/pre-install-uam.sh
sudo chmod 777 pre-install-uam.sh
./pre-install-uam.sh


wget https://raw.githubusercontent.com/danielluis1921/CRP/main/generate-uam.sh
sudo chmod 777 generate-uam.sh
./generate-uam.sh B723CD632BD2B8BED98C765C81DB97C02400ADE8A5977D31825A7357816C3309 2

sudo apt-get -y install w3m w3m-img
#watch -n 1 "curl -s 127.0.0.1:17100 | w3m -T text/html"
#docker logs uam_1
