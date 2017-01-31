all: clean build

validate:
	packer validate 1604-min.json

build: validate
	packer build 1604-min.json

build-vbox: validate
	packer build -only=vbox 1604-min.json

build-vmware: validate
	packer build -only=vmware 1604-min.json

build-large: validate
	packer build -var name=cbednarski/ubuntu-1604-large -var build_name=ubuntu-1604-large -var cpu_cores=4 -var memory=4096 -var disk_size=163840 1604-min.json

clean:
	rm -rf output-*
	rm -rf *.box

clean-all: clean
	rm -rf packer_cache

install:
	vagrant box add ubuntu-1604 ./ubuntu-1604-vbox.box --provider virtualbox --force || true
	vagrant box add ubuntu-1604 ./ubuntu-1604-vmware.box --provider vmware_desktop --force || true
	vagrant box list | grep ubuntu-1604
	@echo Boxes have been installed. Run make clean-all to reclaim disk space.
