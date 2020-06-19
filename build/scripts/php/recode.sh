#!/bin/sh

apk add recode-dev

docker-php-ext-install recode
