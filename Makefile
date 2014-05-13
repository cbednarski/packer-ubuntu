all: build clean
build:
	packer validate template.json
	packer build template.json
clean:
	rm -rf output-*
clean-all:
	rm -rf output-*
	rm -rf packer_cache
	rm -rf *.box
install:
	vagrant box add ubuntu-1204-vbox ./ubuntu-1404-vbox.box --provider virtualbox --force
	vagrant box add ubuntu-1204-vmware ./ubuntu-1404-vmware.box --provider vmware_desktop --force
	vagrant box list | grep ubuntu-1204