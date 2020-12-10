Ubuntu 18.04 Zeroc Ice Builder
==============================

[![Actions Status](https://github.com/ome/zeroc-ice-ubuntu1804/workflows/Build/badge.svg)](https://github.com/ome/zeroc-ice-ubuntu1804/actions)

Builds Zeroc Ice for Ubuntu 18.04.
Ice 3.6 is built from source and a wheel is also created.

This can be used to create installable binary packages as an alternative to compiling from source using pip.

    docker build -t builder .
    docker run --rm -v $PWD/dist:/dist builder

To build a different version of Ice:

    docker run --rm -v $PWD/dist:/dist builder VERSION

Packages will be copied to `$PWD/dist`.


Installing the binaries
-----------------------

```
cd /opt
tar -zxf ice-3.6.5-${RELEASE}-ubuntu1804-amd64.tar.gz
```
These binaries are compiled with a prefix of `/opt/ice-3.6.5-${RELEASE}`.
It may be possible to relocate them but this is untested.

