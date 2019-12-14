#!/usr/bin/bash

cd build
rm -rf *
cp -r ../resources .
cmake ..
cmake --build . && bin/dvdbounce