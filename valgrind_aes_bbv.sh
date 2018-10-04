#!/bin/bash

cd CHstone/aes
g++ aes.c -o aes
cd ../../
valgrind --tool=exp-bbv --interval-size=1000 --bb-out-file=simpoint/input/aes.bb --pc-out-file=simpoint/input/aes.pc ./CHstone/aes/aes

cd simpoint
make
bin/simpoint -loadFVFile input/aes.bb -maxK 30 -saveSimpoints output/aes.simpoints -saveSimpointWeights output/aes.weights
