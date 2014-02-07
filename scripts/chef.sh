#!/bin/bash

# Install latest chef via the omnibus installer
apt-get install -y curl
curl -L https://www.opscode.com/chef/install.sh | bash