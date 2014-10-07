#!/bin/sh
docker run --name daisyy-nginx --link dama-php:dama-php --link tools-node:tools-node -v $(pwd)/conf.d:/etc/nginx/conf.d:ro -v $(pwd):/usr/share/nginx/html:ro -d -p 80:80 nginx
