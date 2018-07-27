apt-get update
apt-get upgrade -y
cd /opt
find . -type d -maxdepth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;
