all: build clean
build:
	packer validate template.json
	packer build template.json
clean:
	rm -rf output-*
install:
	vagrant box add ubuntu-1404-vbox ./packer_virtualbox-iso_virtualbox.box --provider virtualbox --force
	vagrant box add ubuntu-1404-vmware ./packer_vmware-iso_vmware.box --provider vmware_fusion --force
	vagrant box list | grep ubuntu-1404