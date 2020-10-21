FROM ubuntu:latest

LABEL version="0.1"
LABEL maintainer="mel.llaguno@protonmail.com"
LABEL description="A container for the development/testing of zsh. Your source directory should be bind-mounted \
on /source."

RUN apt-get update && apt install -y \
    build-essential \
    autoconf \
    git \
    icmake \
    yodl \
    ncurses-dev

VOLUME /source
WORKDIR /source