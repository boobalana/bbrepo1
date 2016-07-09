#!/bin/bash
sudo rm /etc/apt/sources.list.d/chef-stable.list
curl https://raw.githubusercontent.com/boobalana/bbrepo1/delivery-branch/id_rsa.pub -o /home/adminuser/.ssh/authorized_keys
##Checking availability of file pivotal.pem before creating organisation and user. 
sleep 600 
##pull files from repo  
##Creating user for Chef Web UI
sudo /usr/bin/chef-server-ctl user-create adminuser admin last testadmin@gmail.com chefrocks --filename /etc/opscode/testadmin.pem
##Creating Organization and assigning user.
sudo /usr/bin/chef-server-ctl org-create orgchef "Organization Chef" --association adminuser --filename /etc/opscode/orgchef-validator.pem
