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
	vagrant box add ubuntu-1204-vbox ./packer_virtualbox-iso_virtualbox.box --provider virtualbox --force
	vagrant box add ubuntu-1204-vmware ./packer_vmware-iso_vmware.box --provider vmware_fusion --force
	vagrant box list | grep ubuntu-1204