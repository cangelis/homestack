#!/bin/sh

apk add imap-dev

docker-php-ext-install imap
