#!/bin/sh

PROJ_ROOT_PATH=$(pwd)/

./config --prefix=${PROJ_ROOT_PATH}/../../lib/openssl \
&& make && make install
