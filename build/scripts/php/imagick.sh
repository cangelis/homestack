#!/bin/sh

cd $BUILD_FOLDER/scripts

alpine/dev.sh
apk add imagemagick-dev

printf "\n" | pecl install imagick

docker-php-ext-enable imagick