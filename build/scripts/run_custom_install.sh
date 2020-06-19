#!/bin/sh

# RUN USER'S CUSTOM INSTALL SCRIPT

cd /tmp/user_build

if [ -f .install ]
then
    export BUILD_FOLDER=/tmp/build
    /bin/sh .install
else
    echo No .install script found. Skipping...
fi
