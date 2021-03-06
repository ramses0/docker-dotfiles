#!/bin/sh
cat Dockerfile.template2 | sed 's/^#IFNOT_BAKE//g' > Dockerfile
docker \
	build \
	--build-arg localuser=$USER \
	--build-arg vncpassword=$USER \
	--build-arg dotfilesrepourl='https://github.com/ramses0/dotfiles.git' \
	--build-arg sourcebashrc=0 \
	--tag rames-devenv:latest \
	.
