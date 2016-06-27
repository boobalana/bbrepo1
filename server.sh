#!/bin/bash
sleep 600s
ls -alR /etc/opscode
sudo chmod 755 /etc/opscode/pivotal.pem
sudo /usr/bin/chef-server-ctl user-create bhbalan firstname lastname boobalana85@gmail.com chefrocks --filename /etc/opscode/bhubalan.pem
sudo /usr/bin/chef-server-ctl org-create neufchef "neuu Learning Chef" --association bhbalan --filename /etc/opscode/neufchef-valiaatora.pem
wget https://raw.githubusercontent.com/boobalana/bbrepo1/master/first.txt  -O /tmp/first.txt
wget https://raw.githubusercontent.com/boobalana/bbrepo1/master/final.txt -O /tmp/final.txt
value1=`cat /tmp/first.txt`
value2=`cat /tmp/final.txt`
echo $value1`cat /etc/opscode/neufchef-valiaatora.pem`$value2 | bash
