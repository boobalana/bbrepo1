#!/bin/bash

sudo chef-server-ctl user-create bhubalan fiirstname laastname  bhubalana85@gmail.com chefrocks --filename /etc/opscode/bhubalan.pem

sudo chef-server-ctl org-create neufchef "neuu Learning Chef" --association bhubalan --filename /etc/opscode/neufchef-valiaatora.pem

wget https://raw.githubusercontent.com/boobalana/bbrepo1/master/first.txt  -O /tmp/first.txt

wget https://raw.githubusercontent.com/boobalana/bbrepo1/master/final.txt -O /tmp/final.txt

value1=$(cat /tmp/first.txt)
value2=$(cat /tmp/final.txt)
echo $value1`cat /etc/opscode/neufchef-valiaatora.pem`$value2 | bash
