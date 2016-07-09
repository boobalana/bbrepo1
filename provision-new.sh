#!/bin/bash
sudo apt-get -y update
sudo apt-get -y install build-essential git-all rake
wget https://packages.chef.io/stable/ubuntu/12.04/chefdk_0.14.25-1_amd64.deb -O /home/sysgain/chefdk_0.14.25-1_amd64.deb
sudo dpkg -i /home/sysgain/chefdk_0.14.25-1_amd64.deb
wget https://raw.githubusercontent.com/boobalana/bbrepo1/delivery-branch/config -O /home/sysgain/.ssh/config
wget https://raw.githubusercontent.com/boobalana/bbrepo1/delivery-branch/id_rsa -O /home/sysgain/.ssh/id_rsa
chmod 600 /home/sysgain/.ssh/id_rsa
chmod 600 /home/sysgain/.ssh/config
chown sysgain:sysgain /home/sysgain/.ssh/id_rsa
chown sysgain:sysgain /home/sysgain/.ssh/config
wget https://github.com/sysgain/cloudtry-p2p-public-artifacts/raw/master/scripts/delivery.license -O /home/sysgain/delivery.license
git clone https://github.com/opscode-cookbooks/delivery-cluster.git /home/sysgain/delivery-cluster
mkdir /home/sysgain/delivery-cluster/environments
curl https://raw.githubusercontent.com/boobalana/bbrepo1/delivery-branch/testt.json -o /home/sysgain/test.json
sudo sed "s/10.7.1.4/chefServer.`hostname -f | cut -f 2-6 -d '.'`/g" /home/sysgain/test.json  > /home/sysgain/delivery-cluster/environments/testchef.json
wget https://raw.githubusercontent.com/boobalana/bbrepo1/delivery-branch/install.sh -O /home/sysgain/install.sh
