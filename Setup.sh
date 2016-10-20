#!/bin/bash
service postgresql start
msfdb init
apt-get install -y emacs
git clone --recursive git://github.com/magnars/.emacs.d.git ~/.emacs.d
git clone https://github.com/danielmiessler/SecLists.git /opt/seclist
git clone https://github.com/drwetter/testssl.sh.git /opt/testssl
git clone https://github.com/ToddBenson/checkHeaders.git /opt/checkHeaders
git clone https://github.com/leebaird/discover /opt/discover/
git clone https://github.com/gauntlt/gauntlt /opt/gauntlt
apt-get install -y hexchat
git clone https://github.com/hak5darren/USB-Rubber-Ducky.git /opt/ducky
git clone https://github.com/troyhunt/PineappleSurprise.git /opt/pineapple
wget wifipineapple.com/wp6.sh /opt/pineapple
chmod +x /opt/pineapple/wp6.sh
cd gauntlt
source ./install_gauntlt_deps.sh
bash ./ready_to_rumble.sh
cd /opt/discover
/update.sh
