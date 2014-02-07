# Ubuntu LTS Base VM

This packer script creates base Ubuntu virtual machine images for use with Vagrant. It targets Ubuntu's LTS release line, and currently works with 12.04. I plan to target 14.04 when it's released.

[Based on work by Michell Hashimoto](https://github.com/mitchellh/packer-ubuntu-12.04-docker)

## Usage

With [packer installed](http://www.packer.io/intro/getting-started/setup.html):

    git clone https://github.com/cbednarski/ubuntu-lts-base
    cd ubuntu-lts-base
    make
    make install

The VMs will get spit out with the `.box` extension. `make install` will add the boxes to your Vagrant box list.