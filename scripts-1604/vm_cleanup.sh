#!/bin/bash
apt-get autoremove -y
apt-get clean

# Removing leftover leases and persistent rules
echo "cleaning up dhcp leases"
rm /var/lib/dhcp/*

# When booting with Vagrant / VMware the PCI slot is changed from 33 to 32.
# Instead of eth0 the interface is now called ens33 to mach the PCI slot, so we
# need to change the networking scripts to enable the correct interface.
#
# NOTE: After the machine is rebooted Packer will not be able to reconnect
# (Vagrant will be able to) so make sure this is done in your final provisioner.
sed -i "s/ens33/ens32/g" /etc/network/interfaces

# Zero out the free space to save space in the final image:
echo "Zeroing device to make space..."
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
