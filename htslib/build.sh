#!/bin/sh

set -e

./configure --prefix=$PREFIX --enable-libcurl --enable-plugins CFLAGS="-I$PREFIX/include" LDFLAGS="-L$PREFIX/lib"
make install prefix=$PREFIX

cd ./plugins
make install prefix=$PREFIX CFLAGS="-I$PREFIX/include" LDFLAGS="-L$PREFIX/lib"