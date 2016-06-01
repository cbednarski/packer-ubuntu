# Install open-vm-tools so we can mount shared folders
apt-get install -y open-vm-tools
# Add /mnt/hgfs so the mount works automatically with Vagrant
mkdir /mnt/hgfs
