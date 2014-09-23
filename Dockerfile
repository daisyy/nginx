FROM nginx
ADD /www /usr/local/nginx/html
ADD /www/nginx.conf /etc/nginx.conf

FROM andrei821/docker-php5-fpm
ENV LISTEN 0.0.0.0:9000
ADD /www /usr/local/nginx/html
CMD mkdir -p /var/log/app/dama
CMD chmod -R 0777 /var/log/app/
VOLUME ["/var/log/app:/var/log/app"]
