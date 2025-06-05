#!/bin/bash

cd $SRC_DIR

mkdir build
cd build
cmake -G Ninja ..                    \
    -DCMAKE_PREFIX_PATH=${PREFIX}    \
    -DCMAKE_INSTALL_PREFIX=${PREFIX} \
    -DASP_DEPS_DIR=${PREFIX}         \
    -DUSE_OPENEXR=OFF                \
    -DCMAKE_VERBOSE_MAKEFILE=ON

cmake --build .
cmake --install .


