#!/bin/sh
docker run --name daisyy-nginx --link dama-php:dama-php -v /www/nginx.conf:/etc/nginx.conf:ro -v /www:/usr/local/nginx/html:ro -d -p 80:80 nginx
