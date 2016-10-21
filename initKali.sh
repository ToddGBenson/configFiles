#!/bin/bash
service postgresql start
msfdb init
apt-get update
apt-get upgrade
apt-get install -y hexchat
apt-get install -y emacs
git clone --recursive git://github.com/magnars/.emacs.d.git ~/.emacs.d
git clone https://github.com/danielmiessler/SecLists.git /opt/seclist
git clone https://github.com/drwetter/testssl.sh.git /opt/testssl
git clone https://github.com/ToddBenson/checkHeaders.git /opt/checkHeaders
git clone https://github.com/leebaird/discover /opt/discover/
git clone https://github.com/gauntlt/gauntlt /opt/gauntlt
git clone https://github.com/hak5darren/USB-Rubber-Ducky.git /opt/ducky
git clone https://github.com/troyhunt/PineappleSurprise.git /opt/pineapple
cd /opt/pineapple
wget wifipineapple.com/wp6.sh
chmod +x /opt/pineapple/wp6.sh
cd /opt/gauntlt
source ./install_gauntlt_deps.sh
cd /opt/discover
./update.sh
passwd
bash /opt/gauntlt/ready_to_rumble.sh
which emacs
which hexchat
echo "Delete ssh keys and run ssh-keygen to create new keys."
