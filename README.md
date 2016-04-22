# Ubuntu LTS Virtual Machines for Vagrant

This repo includes a [Packer](https://packer.io) template that builds base VMs for [Vagrant](https://vagrantup.com). The VMs use Ubuntu LTS releases such as Ubuntu 14.04 Trusty Tahr and Ubuntu 16.04 Xenial Xerus. They use the server flavor and are 64-bit only.

These images are built for Vagrant using the VMware and VirtualBox providers, and support shared folders. Beyond that, the images are designed to include as little as possible so you can build your own automation on top using chef, puppet, bash, [ifs](https://github.com/cbednarski/ifs-python), or whatever you like!

This project was originally based on [mitchellh/packer-ubuntu-12.04-docker](https://github.com/mitchellh/packer-ubuntu-12.04-docker) but has since diverged quite a bit. Feel free to fork this repo and use it as a basis for your own Vagrant boxes!

## Atlas

You can download pre-built releases from [Atlas](https://atlas.hashicorp.com/cbednarski/boxes/ubuntu-1604) via:

    vagrant init cbednarski/ubuntu-1604
    vagrant up

See [all of the boxes](https://atlas.hashicorp.com/boxes/search?utf8=✓&sort=&provider=&q=cbednarski).

## Build It

If you want to build the boxes yourself, or customize them, you can do so with [packer](http://www.packer.io/download)!

    git clone https://github.com/cbednarski/packer-ubuntu
    cd packer-ubuntu
    make
    make install

The makefile helps you build one of the images and add the finished box to Vagrant. Take a peek at the `Makefile` to see how to build the other boxes.

## Builds

- `1604-min` and `1404-min` have a minimal set of packages required to run on Virtualbox and VMware with shared folders. This is a good base for testing automated installs because it assumes almost nothing beyond the base operating system.

- `1404-dev` builds on top of the `min` variant to include some developer tooling like vim, tree, [ifs](https://github.com/cbednarski/ifs-python), and [hostess](https://github.com/cbednarski/hostess) so you don't have to reinstall them every single time.
