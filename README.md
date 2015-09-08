# About rtorrent container
`Complexity is the enemy of security`
This container is intended to just be a simple rtorrent server running on the ultra minimalistic [Alpine Linux](https://www.alpinelinux.org/) [Container](https://registry.hub.docker.com/_/alpine/) for the sake of sticking to docker standards and application separation. Containers are not intended to have more than one process/service running at a time for security purposes I've isolated this container as thinly as possible to help keep outward facing processes separate from internal ones.

`Why wouldn't I just include SSH in my container?`

This seems like the logical thing to do but in reality you now open your container to more than one attack vector so now you need to consider security of more than one process for your container.  This requires management of user accounts and ssh keypairs and if you're really lazy usernames and passwords.

`But this makes it really annoying and complex to deploy!`
Yes it can but with docker-compose.yml files you can easily launch a complex interdependent application with one command `docker-compose up`! You can easily create your own YAML parsed docker-compose.yml yourself or you can use services like [this one](https://lorry.io/) to create your own complex application.  One day I may include an example WordPress deployment or something.

`Why not separate commands in your Dockerfile by using the RUN directive for each command rather than separating commands simply with line breaks`

Every RUN directive creates another layer in your container which makes your container much larger than it needs to be.  Meaning if you do any package or archive cleanup after you've installed a bunch of things you're not actually saving any space.

## Current Status
Incomplete but mostly-functional.

## ToDo
- Launch rtorrent at container launch.
- Decide what I wan't to use as a remote interface that wont make choices for you.
- Write some usage examples into README.md
- Add license

## Health & Statistics
#### Repository Health
[![GitHub issues](https://img.shields.io/github/issues/chamunks/alpine-rtorrent.svg?style=flat-square)](https://github.com/chamunks/alpine-rtorrent) out of [![GitHub total issues](https://img.shields.io/github/issues-raw/chamunks/alpine-rtorrent.svg?style=flat-square)](https://github.com/chamunks/alpine-rtorrent)

#### Container Build Health
[![Docker Pulls](https://img.shields.io/docker/pulls/chamunks/alpine-rtorrent.svg?style=flat-square)](https://registry.hub.docker.com/u/chamunks/alpine-rtorrent/)
[![Docker Stars](https://img.shields.io/docker/stars/chamunks/alpine-rtorrent.svg?style=flat-square)](https://registry.hub.docker.com/u/chamunks/alpine-rtorrent/)

Badge broken searching for alternative.

[![Docker Build Status](http://hubstatus.container42.com/chamunks/alpine-rtorrent)](https://registry.hub.docker.com/u/chamunks/alpine-rtorrent)

#### Repository Statistics/Info
[![GitHub license](https://img.shields.io/github/license/chamunks/alpine-rtorrent.svg?style=flat-square)](https://github.com/chamunks/alpine-rtorrent)

[![GitHub forks](https://img.shields.io/github/forks/chamunks/alpine-rtorrent.svg?style=flat-square)](https://github.com/chamunks/alpine-rtorrent)
[![GitHub stars](https://img.shields.io/github/stars/chamunks/alpine-rtorrent.svg?style=flat-square)](https://github.com/chamunks/alpine-rtorrent)
