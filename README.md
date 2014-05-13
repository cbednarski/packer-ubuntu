# Ubuntu LTS Base VM

This packer script creates base Ubuntu 14.04 server virtual machine images for use with Vagrant.

## Usage

With [packer installed](http://www.packer.io/intro/getting-started/setup.html):

    git clone https://github.com/cbednarski/ubuntu-lts-base
    cd ubuntu-lts-base
    make
    make install

`make install` will add the completed boxes to your local Vagrant boxes.