#!/bin/sh

apk add gettext-dev

docker-php-ext-install gettext
