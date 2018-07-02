#!/bin/sh
# -p line: test vnc local internal
docker \
	run \
	-v $HOME/Git:/home/$USER/Git \
	-v $HOME:/home/$USER/host \
	-v $HOME/.ssh/:/home/$USER/.ssh \
	-p 127.0.0.1:1234:5900 \
	-i \
	-t \
	-w /home/$USER/ \
	rames-devenv:latest bash
