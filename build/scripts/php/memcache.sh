#!/bin/sh

printf "\n" | pecl install memcache

docker-php-ext-enable memcache
