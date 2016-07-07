#!/bin/bash
wget https://raw.githubusercontent.com/boobalana/bbrepo1/delivery-branch/config -O /home/adminuser/.ssh/config
wget https://raw.githubusercontent.com/boobalana/bbrepo1/delivery-branch/id_rsa -O /home/adminuser/.ssh/id_rsa
sudo chmod 600 /home/adminuser/.ssh/id_rsa 
sudo chmod 600 /home/adminuser/.ssh/config
sudo chown adminuser:adminuser /home/adminuser/.ssh/id_rsa
sudo chown adminuser:adminuser /home/adminuser/.ssh/config
wget https://github.com/boobalana/bbrepo1/blob/delivery-branch/delivery.license -O /home/adminuser/delivery.license
sudo apt-get -y update
sudo apt-get -y install build-essential git-all rake
wget https://packages.chef.io/stable/ubuntu/12.04/chefdk_0.14.25-1_amd64.deb -O chefdk_0.14.25-1_amd64.deb
sudo dpkg -i /home/adminuser/chefdk_0.14.25-1_amd64.deb
export PATH=/opt/chefdk/embedded/bin:$PATH
export CHEF_ENV=testchef
git clone https://github.com/opscode-cookbooks/delivery-cluster.git delivery-cluster
cd /home/adminuser/delivery-cluster
mkdir /home/adminuser/delivery-cluster/environments
curl https://raw.githubusercontent.com/boobalana/bbrepo1/delivery-branch/testt.json -o /home/adminuser/delivery-cluster/environments/test.json
sed "s/10.7.2.4/chefServer.`hostname -f | cut -f 2-6 -d '.'`/g" /home/adminuser/delivery-cluster/environments/test.json  > /home/adminuser/delivery-cluster/environments/testchef.json
rake setup:cluster
