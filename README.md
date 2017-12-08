# Raspberry Pi 1 MariaDB 10.1.28-r1 Docker Image With Alpine Linux

[![Build Status](https://travis-ci.org/offtechnologies/docker-arm32v6-mariadb.svg?branch=master)](travis-ci.org/offtechnologies/docker-arm32v6-mariadb)
[![This image on DockerHub](https://img.shields.io/docker/pulls/offtechnologies/docker-arm32v6-mariadb.svg)](https://hub.docker.com/r/offtechnologies/docker-arm32v6-mariadb/)
[![](https://images.microbadger.com/badges/version/offtechnologies/docker-arm32v6-mariadb.svg)](https://microbadger.com/images/offtechnologies/docker-arm32v6-mariadb "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/offtechnologies/docker-arm32v6-mariadb.svg)](https://microbadger.com/images/offtechnologies/docker-arm32v6-mariadb "Get your own image badge on microbadger.com")


[offtechurl]: https://offtechnologies.gthub.io

[![offtechnologies](https://raw.githubusercontent.com/offtechnologies/offtechnologies.github.io/master/logo.png)][offtechurl]

Raspberry Pi 1 compatible Docker base image with Alpine Linux and MariaDB. Just ~57MB. It is based on the official MariaDB Docker Image ported to the arm32v6 based Raspbery Pi 1. The setup script is based on [official MariaDB docker image](https://hub.docker.com/_/mariadb/), so the usage is the same.

## Credits

- [Resin.io's blog post](https://resin.io/blog/building-arm-containers-on-any-x86-machine-even-dockerhub/) Building arm containers on any x86 machine
- [Hypriot's blog post](https://blog.hypriot.com/post/setup-simple-ci-pipeline-for-arm-images/) Setup a simple CI pipeline for arm images

## 1.0.1 - 2017-12-08
* upgrade to 10.1.28-r1
* Custom base image: Alpine Linux arm32v6 ver 3.7 with qemu-arm-static
* Tested on Raspberry Pi 1 Model B Rev 2 with  Raspbian 4.9.51-1+rpi3 (2017-10-22) armv6l GNU/Linux and Docker v17.10.0-ce (It looks Docker 17.11.0 has the problem. sudo apt install docker-ce=17.10.0~ce-0~raspbian)


## 1.0.0 - 2017-10-30
* first release
* Custom base image: Alpine Linux arm32v6 ver 3.6 with qemu-arm-static
* Tested on Raspberry Pi 1 Model B Rev 2 with Arch Linux 4.9.58-1 and Docker v17.10.0-ce
