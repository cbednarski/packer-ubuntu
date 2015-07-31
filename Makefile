all: clean build

validate:
	packer validate 1404-min.json

build: validate
	packer build 1404-min.json

build-vbox: validate
	packer build -only=vbox 1404-min.json

build-vmware: validate
	packer build -only=vmware 1404-min.json

clean:
	rm -rf output-*
	rm -rf *.box

clean-all: clean
	rm -rf packer_cache

install:
	vagrant box add ubuntu-1404-vbox ./ubuntu-1404-vbox.box --provider virtualbox --force || true
	vagrant box add ubuntu-1404-vmware ./ubuntu-1404-vmware.box --provider vmware_desktop --force || true
	vagrant box list | grep ubuntu-1404
	@echo Boxes have been installed. Run make clean-all to reclaim disk space.
