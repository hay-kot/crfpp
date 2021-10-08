FROM ubuntu:20.04

ARG BUILD_ARCH=aarch64-unknown-linux-gnu 

RUN apt-get update --yes && \
    apt-get upgrade --yes && \
    apt-get install --yes \
    build-essential && \
    rm -rf /var/lib/apt/lists/* && \
    rm -Rf /usr/share/doc && \
    rm -Rf /usr/share/man && \
    apt-get autoremove -y

ADD . /crfpp
WORKDIR /crfpp

ENV DISTRIB_ID=Ubuntu
ENV DISTRIB_RELEASE=20.04

RUN ./configure --build=${BUILD_ARCH}} && \
    make && \
    make install && \
    ldconfig
