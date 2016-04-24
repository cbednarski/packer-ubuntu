# Install some system packages
apt-get install -y wget curl vim git mercurial bzr tree python python-pip htop nmap

# Install ifs
pip install -U setuptools pip ifs

# Install hostess
ifs install hostess
