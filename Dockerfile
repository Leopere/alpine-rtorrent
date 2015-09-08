##########################
## Alpine based OPENSSH ##
##########################
FROM alpine:edge
MAINTAINER Chamunks <Chamunks@gmail.com>
## Prepare ##
RUN apk add --update rtorrent
COPY rtorrent.rc ~/rtorrent.rc
EXPOSE 22
VOLUME ["/data/complete", "/data/incomplete", "/data/watch", "/data/added"]
ENTRYPOINT  ["/bin/sh"]
CMD  ["rtorrent"]
