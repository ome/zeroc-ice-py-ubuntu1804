#!/bin/sh

set -eu

ICE_VERSION=${1:-"3.6.4"}
tar cf - /opt/$ICE_VERSION/ | xz -z - > Ice-$ICE_VERSION-ubuntu1804-amd64.tar.xz

pip download "zeroc-ice==$ICE_VERSION"
tar -zxf "zeroc-ice-$ICE_VERSION.tar.gz"
cd "zeroc-ice-$ICE_VERSION"
python setup.py bdist_wheel
cp dist/* /dist/
