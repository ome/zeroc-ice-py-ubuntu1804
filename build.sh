#!/bin/sh

set -eux

ICE_VERSION=${1:-"3.6.5"}

# Build ice cpp from source
wget -q https://github.com/zeroc-ice/ice/archive/v$ICE_VERSION.tar.gz
tar xzf v$ICE_VERSION.tar.gz
cd ice-$ICE_VERSION/cpp

make --silent && make install --silent

tar -zcf /dist/Ice-$ICE_VERSION-ubuntu1804-amd64.tar.gz -C /opt Ice-3.6.5/

# Zeroc IcePy
pip3 download "zeroc-ice==$ICE_VERSION"
tar -zxf "zeroc-ice-$ICE_VERSION.tar.gz"
cd "zeroc-ice-$ICE_VERSION"
python3 setup.py bdist_wheel

cp dist/* /dist/
