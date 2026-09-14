FROM php:zts-alpine3.23

WORKDIR /var/www

COPY index.php /var/www/index.php

RUN apk add nginx

CMD ["php", "-S", "0.0.0.0:8000", "-t", "/var/www"]