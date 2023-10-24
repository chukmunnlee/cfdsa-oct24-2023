#!/bin/bash

docker run -d -p 3306:3306 \
	--mount type=volume,src=myvol,dst=/var/lib/mysql \
	-e MYSQL_ROOT_PASSWORD=changeit \
	mysql:8
