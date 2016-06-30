#!/bin/bash
##Checking availability of file pivotal.pem before creating organisation and user. 
sleep 100s
sudo wget https://raw.githubusercontent.com/boobalana/bbrepo1/delivery-branch/id_rsa.pub -O /home/adminuser/.ssh/id_rsa.pub 
sudo cat /home/adminuser/.ssh/id_rsa.pub >> /home/adminuser/.ssh/authorized_keys
##pull files from repo  
wget https://raw.githubusercontent.com/boobalana/bbrepo1/delivery-branch/config  -O /home/adminuser/.ssh/config
