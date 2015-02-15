# Ubuntu 14.04.1 (LTS) Base VM

This packer script creates no-frills Ubuntu 14.04.1 server virtual machine images for use with Vagrant (both VirtualBox and VMware Fusion). The image includes guest additions and basically nothing else. Feel free to use this as a base for other things.

## Atlas

You can download tagged releases of this VM from [Atlas](https://atlas.hashicorp.com/cbednarski/boxes/ubuntu-1404) via:

    vagrant init cbednarski/ubuntu-1404
    vagrant up

## Build It

With [packer installed](http://www.packer.io/intro/getting-started/setup.html):

    git clone https://github.com/cbednarski/ubuntu-1404-packer
    cd ubuntu-1404-packer
    make
    make install

`make install` will add the completed boxes to your local Vagrant boxes.
