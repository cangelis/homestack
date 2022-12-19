#!/bin/sh

pecl install mongodb
docker-php-ext-enable mongodb
