#!/bin/sh
set -eu

ssh-keygen -A

/usr/sbin/sshd

while pgrep -f /usr/sbin/sshd; do
	sleep 5
done

>&2 echo 'SSHD is no longer running'
exit 1
