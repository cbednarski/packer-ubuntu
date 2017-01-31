#!/bin/bash
apt-get autoremove -y
apt-get clean

# Removing leftover leases and persistent rules
echo "cleaning up dhcp leases"
rm /var/lib/dhcp/*
