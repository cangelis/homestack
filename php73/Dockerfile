FROM php:7.3-fpm-alpine

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN apk update \
    && apk upgrade \
    && apk add --no-cache openssl \
    && apk add --no-cache bash \
    && apk add --update nodejs npm \
    && apk add libmcrypt-dev libzip-dev libpng-dev \
    && apk add autoconf nano \
    && apk add --update supervisor

COPY supervisord.conf /etc/supervisord.conf

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
	&& php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
	&& rm composer-setup.php

RUN docker-php-ext-install pdo_mysql \
	&& docker-php-ext-install zip \
	&& docker-php-ext-install gd \
	&& docker-php-ext-install bcmath \
	&& docker-php-ext-install opcache

CMD ["/usr/bin/supervisord"]