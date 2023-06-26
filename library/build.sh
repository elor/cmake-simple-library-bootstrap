#!/bin/bash

cmake -S . -B build/ -DCMAKE_INSTALL_PREFIX=../usr/
cmake --build build/
cmake --install build/

echo Done

