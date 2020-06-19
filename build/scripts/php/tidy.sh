#!/bin/sh

apk add tidyhtml-dev

ln -s /usr/include/tidybuffio.h /usr/include/buffio.h

docker-php-ext-install tidy
