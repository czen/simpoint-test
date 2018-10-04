#!/bin/bash

valgrind --tool=exp-bbv --interval-size=1000 --bb-out-file=aes.bbv --pc-out-file=aes.pc ./aes
