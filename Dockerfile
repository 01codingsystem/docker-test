FROM php:zts-alpine3.23

WORKDIR /var/www

COPY index.php /var/www/index.php
COPY nginx.conf /etc/nginx/nginx.conf

RUN apk add --no-cache nginx \
    && mkdir -p /run/nginx

CMD ["php", "-S", "0.0.0.0:8000", "-t", "/var/www"]