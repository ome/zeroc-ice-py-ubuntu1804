#!/bin/bash

set -eu
ICE_VERSION=${1:-"3.6.5"}

apt-get update && \
apt-get install -y -q\
    unzip \
    wget \
    build-essential \
    db5.3-util \
    libbz2-dev \
    libdb++-dev \
    libdb-dev \
    libexpat-dev \
    libmcpp-dev \
    libssl-dev \
    mcpp \
    python3-dev \
    python3-pip \
    python3-wheel \
    software-properties-common \
    zlib1g-dev

wget -q https://github.com/zeroc-ice/ice/archive/v$ICE_VERSION.tar.gz
tar xzf v$ICE_VERSION.tar.gz
cd ice-$ICE_VERSION/cpp

make --silent && make install --silent
