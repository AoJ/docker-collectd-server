# Project: collectd host
# Author: AooJ <aooj@n13.cz>
# Date: 2014
# usage:
#	make build	- build new image from Dockerfile
#	make debug	- debug run already created image and attach to it
#	make try	- build and run in debug mode
#	make remove	- discarding current running production container

NAME=aooj/collectd-host
ID=collectd-host
VERSION=1.0


build:
	docker build -t $(NAME):$(VERSION) .


debug:
	docker run  --privileged=true -h host-test3 --entrypoint="/bin/bash" --rm -ti -v /proc:/proc:ro -v /dev:/dev $(NAME):$(VERSION) -c /bin/bash

try: build debug


.PHONY: build debug try

