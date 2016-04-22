# Ubuntu LTS Base VM

This packer script creates no-frills Ubuntu LTS server virtual machine images for use with Vagrant (both VirtualBox and VMware Fusion). The image includes guest additions and basically nothing else. Feel free to use this as a base for other things. Currently Ubuntu 14.04 Trusty Tahr and Ubuntu 16.04 Xenial Xerus are supported.

## Atlas

You can download tagged releases of this VM from [Atlas](https://atlas.hashicorp.com/cbednarski/boxes/ubuntu-1404) via:

    vagrant init cbednarski/ubuntu-1404
    vagrant up

## Build It

With [packer installed](http://www.packer.io/intro/getting-started/setup.html):

    git clone https://github.com/cbednarski/packer-ubuntu
    cd packer-ubuntu
    make
    make install

`make install` will add the completed boxes to your local Vagrant boxes.

## Builds

- `1404-min` has a minimal set of packages required to run on Virtualbox and VMware. This is a good base for testing automated installs because it assumes almost nothing beyond the base operating system.
- `1404-dev` builds on top of the `min` variant to include some developer tooling like vim, tree, [ifs](https://github.com/cbednarski/ifs-python), and [hostess](https://github.com/cbednarski/hostess).
