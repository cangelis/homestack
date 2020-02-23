#!/bin/sh

# RUN USER'S CUSTOM INSTALL SCRIPT

cd /tmp/user_build

if [ -f .install ]
then
    /bin/sh .install
else
    echo No .install script found. Skipping...
fi
