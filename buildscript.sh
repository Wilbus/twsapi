#!/bin/bash

REBUILD=$1

if [[ $REBUILD -gt 0 ]]
then
    ./clangformatter.sh

    rm -rf output/
    mkdir output/
    cmake -S . -B output/
    cmake --build output/ -j 6

    cp -rf ./output ../trading-api-executables
else
    echo "normal build\n"
    cmake --build output/ -j 6
    #rm -rf runfiles/
    #mkdir runfiles/
    #cp -rf output/trading-api/executables runfiles/
    #cp -rf output/trading-api/unit_tests runfiles/
fi
