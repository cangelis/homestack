#!/bin/sh

apk add aspell-dev

docker-php-ext-install pspell
