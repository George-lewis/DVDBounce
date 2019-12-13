#!/usr/bin/bash

cd build
cmake ..
cmake --build . && bin/Test