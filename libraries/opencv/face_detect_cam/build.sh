#!/bin/bash

set -e
set -x

rm -rf build
mkdir build
pushd build

conan install ..
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build .

pushd bin
./camera

popd
popd
