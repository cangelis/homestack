#!/bin/sh

printf "\n" | pecl install redis
docker-php-ext-enable redis