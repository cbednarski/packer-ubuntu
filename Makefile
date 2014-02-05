build:
	packer validate template.json
	packer build template.json
clean:
	rm -rf output-*
	rm -rf packer_cache
