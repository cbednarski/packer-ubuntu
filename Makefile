all: build clean

validate:
	packer validate template.json

build: validate
	packer build template.json

build-vbox: validate
	packer build -only=vbox template.json

build-vmware: validate
	packer build -only=vmware template.json

clean:
	rm -rf output-*
	rm -rf *.box

clean-all: clean
	rm -rf packer_cache

install:
	vagrant box add ubuntu-1204-vbox ./ubuntu-1404-vbox.box --provider virtualbox --force
	vagrant box add ubuntu-1204-vmware ./ubuntu-1404-vmware.box --provider vmware_desktop --force
	vagrant box list | grep ubuntu-1204

