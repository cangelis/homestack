#!/bin/sh

apk add libpng-dev libwebp-dev libjpeg-turbo-dev freetype-dev zlib-dev

IS_NEWER_THAN_74=$(php -r "echo version_compare(PHP_VERSION, '7.4.0') >= 0 ? 'true' : 'false';")

if [ $IS_NEWER_THAN_74 = "true" ]; then
    docker-php-ext-configure gd --with-jpeg --with-freetype --with-webp
else
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ \
    --with-webp-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
    --with-png-dir=/usr/include
fi

docker-php-ext-install gd
