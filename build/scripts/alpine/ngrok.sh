#!/bin/sh

if [[ -z "${NGROK_DOWNLOAD_URL}" ]]; then
  NGROK_DOWNLOAD_URL=https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
fi

wget $NGROK_DOWNLOAD_URL -O ngrok.zip
unzip ngrok.zip
mv ngrok /usr/bin/ngrok