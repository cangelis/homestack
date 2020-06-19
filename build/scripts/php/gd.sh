#!/bin/sh

apk add libpng-dev libwebp-dev libjpeg-turbo-dev freetype-dev
docker-php-ext-configure gd --with-freetype-dir=/usr/include/ \
    --with-webp-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
    --with-png-dir=/usr/include
docker-php-ext-install gd
