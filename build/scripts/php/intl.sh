#!/bin/sh

apk add icu-dev

docker-php-ext-install intl
