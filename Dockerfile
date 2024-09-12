###############################################
# Build stage
###############################################
FROM ubuntu:24.04 as build

RUN apt-get update --yes && \
    apt-get upgrade --yes && \
    apt-get install --no-install-recommends --yes \
    automake \
    build-essential \
    libtool && \
    rm -rf /var/lib/apt/lists/* && \
    rm -Rf /usr/share/doc && \
    rm -Rf /usr/share/man && \
    apt-get autoremove -y

ADD . /crfpp
WORKDIR /crfpp

RUN autoreconf --force --install && \
    ./configure && \
    make clean && \
    make && \
    make install

###############################################
# Production stage
###############################################
FROM ubuntu:24.04 as production

COPY --from=build /usr/local /usr/local

ENV DISTRIB_ID=Ubuntu
ENV DISTRIB_RELEASE=24.04

RUN ldconfig
