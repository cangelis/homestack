#!/bin/sh

apk add autoconf gcc g++ make unixodbc-dev

pecl install sqlsrv
pecl install pdo_sqlsrv

docker-php-ext-enable sqlsrv pdo_sqlsrv