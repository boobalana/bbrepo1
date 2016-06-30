#!/bin/bash
##Checking availability of file pivotal.pem before creating organisation and user. 
sleep 100s
sudo wget https://raw.githubusercontent.com/boobalana/bbrepo1/delivery-branch/id_rsa -O /home/adminuser/.ssh/id_rsa 
chmod 600 /home/adminuser/.ssh/id_rsa
##pull files from repo  
sudo wget https://raw.githubusercontent.com/boobalana/bbrepo1/delivery-branch/config  -O /home/adminuser/.ssh//config
