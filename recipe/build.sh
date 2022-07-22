#!/bin/bash


# Taken from here: https://github.com/equinor/dlisio/blob/master/python/pyproject.toml
cmake \
  -S ${SRC_DIR} \
  -B ${SRC_DIR}/build \
  -DFMT_TEST=OFF \
  -DFMT_DOC=OFF \
  -DCMAKE_INSTALL_PREFIX="${PREFIX}"

cd build
make -j4 install

