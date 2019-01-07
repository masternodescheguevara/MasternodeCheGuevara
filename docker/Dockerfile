FROM debian:stretch
LABEL maintainer="masternodescheguevara Developers <dev@masternodescheguevara.org>"
LABEL description="Dockerised masternodescheguevaraCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
