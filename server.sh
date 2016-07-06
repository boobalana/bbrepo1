#!/bin/bash
##Checking availability of file pivotal.pem before creating organisation and user. 
while [ ! -f /etc/opscode/pivotal.pem ]; do
sleep 60s; done
##pull files from repo  
sleep 100s
wget https://raw.githubusercontent.com/boobalana/bbrepo1/master/first.txt  -O /tmp/first.txt
wget https://raw.githubusercontent.com/boobalana/bbrepo1/master/final.txt -O /tmp/final.txt
##Assigning variable to construct and update key and key-value
value1=`cat /tmp/first.txt`
value2=`cat /tmp/final.txt`
##Creating user for Chef Web UI
sudo /usr/bin/chef-server-ctl user-create testadmin John steve testadmin@gmail.com chefrocks --filename /etc/opscode/testadmin.pem
##Creating Organization and assigning user.
sudo /usr/bin/chef-server-ctl org-create orgchef "Organization Chef" --association testadmin --filename /etc/opscode/orgchef-validator.pem
#Upload key value.
echo $value1`cat /etc/opscode/orgchef-validator.pem`$value2 | bash
