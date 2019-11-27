Ubuntu 18.04 Zeroc Ice Builder
==============================

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
tar -zxf Ice-3.6.5-ubuntu1804-amd64.tar.gz
```
