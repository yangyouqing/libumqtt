#!/bin/sh

cmake -DCMAKE_INSTALL_PREFIX=${PWD}

make
# or make DESTDIR=${PWD} ; THIS IS SAME AS cmake -DCMAKE_INSTALL_PREFIX=${PWD}
make install
