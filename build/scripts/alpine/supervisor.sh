#!/bin/sh

apk add supervisor

cp $BUILD_FOLDER/config/supervisor/supervisord.conf /etc/supervisord.conf