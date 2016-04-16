##########################
## Alpine based OPENSSH ##
##########################
FROM alpine:3.3
MAINTAINER Chamunks <Chamunks@gmail.com>
## Prepare ##
RUN apk add --no-cache rtorrent screen
ENV HOME=/home/nobody
RUN mkdir "$HOME" && chown nobody:nobody "$HOME"
USER nobody
RUN mkdir "$HOME/session"
COPY rtorrent.rc "$HOME/.rtorrent.rc"
# Port 49164 is opening incoming connections from other peers.
# Port 6881 is the DHT port if you wish to use it.
EXPOSE 49164 6881
# These volumes are mostly optional it depends on how you want to run your container.
VOLUME ["/data/complete", "/data/incomplete", "/data/watch", "/data/added", "/data/downloads", "/data/torrents"]
#ENTRYPOINT  ["rtorrent"]
WORKDIR "$HOME"
CMD ["/usr/bin/screen", "-d", "-m", "-fa", "-S", "rtorrent", "/usr/bin/rtorrent"]
