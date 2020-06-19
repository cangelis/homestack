#!/bin/sh

cd $BUILD_FOLDER/scripts

alpine/dev.sh

pecl install xdebug

echo "xdebug.remote_host=host.docker.internal" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
echo "xdebug.auto_start=off" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
