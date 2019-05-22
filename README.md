Ubuntu 18.04 Zeroc Ice Builder
==============================

Builds Zeroc Icefor Ubuntu 18.04.

This can be used to create installable binary packages as an alternative to compiling from source using pip.

    docker build -t builder .
    docker run --rm -v $PWD/dist:/dist builder

To build a different version of Ice:

    docker run --rm -v $PWD/dist:/dist builder VERSION

Packages will be copied to `$PWD/dist`.
