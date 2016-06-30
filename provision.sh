#!/bin/bash
wget https://raw.githubusercontent.com/boobalana/bbrepo1/delivery-branch/config -O /home/adminuser/.ssh/config
wget https://raw.githubusercontent.com/boobalana/bbrepo1/delivery-branch/id_rsa -O /home/adminuser/.ssh/id_rsa
chmod 600 /home/adminuser/.ssh/id_rsa
wget https://github.com/boobalana/bbrepo1/blob/delivery-branch/delivery.license -O /home/adminuser/delivery.license
