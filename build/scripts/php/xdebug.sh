#!/bin/sh

cd $BUILD_FOLDER/scripts

alpine/dev.sh

pecl install xdebug

echo "xdebug.remote_connect_back=1" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
echo "xdebug.auto_start=off" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
echo "xdebug.default_enable=1" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
echo "xdebug.idekey=PHPSTORM" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
