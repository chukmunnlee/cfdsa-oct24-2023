#!/bin/bash

docker run --rm -ti \
	--network mynet \
	nicolaka/netshoot /bin/bash
