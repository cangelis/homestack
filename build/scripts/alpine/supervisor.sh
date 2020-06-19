#!/bin/sh

if [ -x "$(command -v pip)" ]; then
    pip install supervisor
else
    apk add supervisor
fi

cp $BUILD_FOLDER/config/supervisor/supervisord.conf /etc/supervisord.conf