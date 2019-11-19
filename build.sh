#!/bin/sh

set -eu

ICE_VERSION=${1:-"3.6.5"}

pip3 download "zeroc-ice==$ICE_VERSION"
tar -zxf "zeroc-ice-$ICE_VERSION.tar.gz"
cd "zeroc-ice-$ICE_VERSION"
python3 setup.py bdist_wheel

tar cf - /opt/Ice-$ICE_VERSION/ | xz -z - > dist/Ice-$ICE_VERSION-ubuntu1804-amd64.tar.xz

cp dist/* /dist/
