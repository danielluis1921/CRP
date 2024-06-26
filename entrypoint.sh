#!/bin/bash
cd /tmp
apt-get -y -o Acquire::Check-Valid-Until=false update && apt-get -yq install wget libglib2.0-0 dnsmasq ca-certificates wondershaper
file=uam-latest_amd64.deb
rm $file
wget --no-check-certificate  https://update.u.is/downloads/uam/linux/$file
dpkg -i /tmp/$file
cd /opt/uam/
echo "[net]" >> /root/.uam/uam.ini
container_ip="$(hostname -i)"
echo "listens=[${container_ip}]:$2" >> /root/.uam/uam.ini
./uam --pk $1 --http [0.0.0.0]:17099 --no-ui
