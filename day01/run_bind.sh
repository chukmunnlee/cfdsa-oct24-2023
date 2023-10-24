#!/bin/bash

docker run -d -p 9090:80 \
	--mount type=bind,src=/opt/tmp/cfdsa-oct24-2023/day01/html,dst=/usr/share/nginx/html \
	nginx:1.25
