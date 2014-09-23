#!/bin/sh
docker run -t -i -d --name php -v /www/dama:/usr/local/nginx/html/dama:ro -v /var/log/app/dama:/var/log/app/dama -e LISTEN=0.0.0.0:9000 andrei821/docker-php5-fpm
docker run --name daisyy-nginx --link php:php -v /www/nginx.conf:/etc/nginx.conf:ro -v /www:/usr/local/nginx/html:ro -d -p 80:80 nginx
