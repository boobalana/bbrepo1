#!/bin/bash
sleep 700s
ls -alR /etc/opscode
sudo chmod 755 /etc/opscode/pivotal.pem
sleep 120s 
sudo /usr/bin/chef-server-ctl user-create bhbalan fiirstname laastname bhubalana85@gmail.com chefrocks --filename /etc/opscode/bhubalan.pem
sleep 120s
sudo /usr/bin/chef-server-ctl org-create neufchef "neuu Learning Chef" --association bhbalan --filename /etc/opscode/neufchef-valiaatora.pem
sleep 120s
wget https://raw.githubusercontent.com/boobalana/bbrepo1/master/first.txt  -O /tmp/first.txt
wget https://raw.githubusercontent.com/boobalana/bbrepo1/master/final.txt -O /tmp/final.txt

sudo export value1=$(cat /tmp/first.txt)
sudo export value2=$(cat /tmp/final.txt)
sleep 120s
echo $value1`cat /etc/opscode/neufchef-valiaatora.pem`$value2 | bash
