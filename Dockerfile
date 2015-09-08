##########################
## Alpine based OPENSSH ##
##########################
FROM alpine:edge
MAINTAINER Chamunks <Chamunks@gmail.com>
## Prepare ##
RUN apk add --update rtorrent
COPY rtorrent.rc ~/rtorrent.rc
EXPOSE 22
#VOLUME ["/root/.ssh/authorized_keys", "/etc/ssh/sshd_config"]
ENTRYPOINT  ["/bin/sh"]
CMD  ["rtorrent"]
