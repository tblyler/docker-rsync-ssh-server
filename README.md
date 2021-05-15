# docker-rsync-server

This is a simple docker image definition for starting an SSH server that is used for rsyncing to volume mounts.

## Volumes

| path                       | description                           |
|----------------------------|---------------------------------------|
| /root/.ssh/authorized_keys | the ssh keys to allow for auth        |
| /etc/ssh                   | location for SSH host keys and config |
| anywhere else              | the locations available for rsync     |
