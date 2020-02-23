#!/bin/sh

apk add supervisor

cp /tmp/build/config/supervisor/supervisord.conf /etc/supervisord.conf