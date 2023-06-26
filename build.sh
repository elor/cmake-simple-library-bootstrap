#!/bin/bash

set -e -u

# Build the library

(
cd library && ./build.sh
)

# Build the binary
(
cd binary && ./build.sh
)

# Test the binary

echo
./binary/build/hello
echo
