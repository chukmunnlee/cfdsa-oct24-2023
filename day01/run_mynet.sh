#!/bin/bash

docker run -d -p 8888:80 \
	--name myweb \
	--network mynet \
	nginx:1.25
