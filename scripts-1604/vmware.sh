# Install open-vm-tools so we get basic stuff like
apt-get install -y open-vm-tools

# Install the Linux headers
apt-get -y install build-essential linux-headers-$(uname -r)

# Install the VMware Fusion guest tools so shared-folders work. If / when this is
# added to open-vm-tools we can remove this.
cd /tmp
mkdir -p /mnt/cdrom
mount -o loop ~/linux.iso /mnt/cdrom
tar zxf /mnt/cdrom/VMwareTools-*.tar.gz -C /tmp/
/tmp/vmware-tools-distrib/vmware-install.pl -d --force-install
rm /home/vagrant/linux.iso
umount /mnt/cdrom

# Recompile when the kernel is updated
echo "answer AUTO_KMODS_ENABLED yes" >> /etc/vmware-tools/locations

# Make sure the kernel module is loaded at boot
echo "vmhgfs" > /etc/modules-load.d/vmware.conf

shutdown -r now
sleep 60