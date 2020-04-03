#!/usr/bin/bash

mkdir -p build
cd build
rm -rf *
cp -r ../resources .
cmake ..
cmake --build . && bin/dvdbounce
