#!/bin/sh

cd /tmp/build

scripts/alpine/openssh.sh

# generate host keys
ssh-keygen -A

# unlock root user
passwd -u root

echo "Copying sshd config for supervisor"
mkdir -p /etc/supervisord.d/sys
cp config/supervisor/sshd.conf /etc/supervisord.d/sys/sshd.conf
cp config/openssh/sshd_config /etc/ssh/sshd_config
