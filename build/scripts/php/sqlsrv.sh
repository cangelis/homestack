#!/bin/sh

cd $BUILD_FOLDER/scripts

alpine/dev.sh
apk add unixodbc-dev

pecl install sqlsrv
pecl install pdo_sqlsrv

docker-php-ext-enable sqlsrv pdo_sqlsrv