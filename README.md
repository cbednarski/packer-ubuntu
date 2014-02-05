# Ubuntu 14.04 Base VM

This packer script creates base virtual machine images for use with Vagrant.

[Based on work by Michell Hashimoto](https://github.com/mitchellh/packer-ubuntu-12.04-docker)

## Usage

With [packer installed](http://www.packer.io/intro/getting-started/setup.html):

    git clone https://github.com/cbednarski/ubuntu-14.04-base
    cd ubuntu-14.04-base
    make

The VMs will get spit out with the `.box` extension.

Note: the makefile will also attempt to add the boxes to your Vagrant collection. If you don't want this to happen (e.g. in CI), run `make build` instead. See the makefile for details.