#!/bin/sh

apk add libmcrypt-dev

IS_NEWER_THAN_71=$(php -r "echo version_compare(PHP_VERSION, '7.2.0') >= 0 ? 'true' : 'false';")

if [ $IS_NEWER_THAN_71 = "false" ]; then
  docker-php-ext-install mcrypt
else
  cd $BUILD_FOLDER/scripts
  alpine/dev.sh

  pecl install mcrypt-1.0.3
  docker-php-ext-enable mcrypt
fi
