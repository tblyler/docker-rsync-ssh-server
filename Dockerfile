FROM alpine:3.13

RUN apk add --no-cache \
	openssh-server \
	rsync

RUN mkdir -p /root/.ssh && \
	cp /etc/ssh/sshd_config /etc/default_sshd_config && \
	passwd -d root

COPY ./entrypoint.sh /entrypoint

ENTRYPOINT ["/entrypoint"]
