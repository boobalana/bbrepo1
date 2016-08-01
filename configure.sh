#!/bin/bash
FQDN=`hostname -f`
echo "api_fqdn '$FQDN'" | sudo tee -a /etc/chef-marketplace/marketplace.rb
sudo sed -i "s/^fqdn .*/fqdn '$FQDN'/" /etc/chef-compliance/chef-compliance.rb
sed -i "s/^biscotti.*$/biscotti.enabled = false/"  /etc/chef-marketplace/marketplace.rb
sudo chef-marketplace-ctl hostname $FQDN
sudo chef-compliance-ctl reconfigure
