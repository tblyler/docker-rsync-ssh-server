#!/bin/sh
set -eu

ssh-keygen -A

if [ ! -e '/etc/ssh/sshd_config' ]; then
	cp /etc/default_sshd_config /etc/ssh/sshd_config
fi

/usr/sbin/sshd

while pgrep -f /usr/sbin/sshd; do
	sleep 5
done

>&2 echo 'SSHD is no longer running'
exit 1
