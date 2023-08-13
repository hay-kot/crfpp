FROM ubuntu:20.04


RUN apt-get update --yes && \
    apt-get upgrade --yes && \
    apt-get install --yes \
    build-essential autoconf && \
    rm -rf /var/lib/apt/lists/* && \
    rm -Rf /usr/share/doc && \
    rm -Rf /usr/share/man && \
    apt-get autoremove -y

RUN apt-get update --yes && apt-get install --yes libtool

ADD . /crfpp
WORKDIR /crfpp

ENV DISTRIB_ID=Ubuntu
ENV DISTRIB_RELEASE=20.04

RUN chmod +x ./docker-build.sh && ./docker-build.sh
