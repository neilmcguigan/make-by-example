#!/bin/bash

# print all of the targets of a makefile
# usage ./print-targets.sh $makefilename

make -f "$1" -qp |
    awk -F':' '/^[a-zA-Z0-9][^$#\/\t=]*:([^=]|$)/ {split($1,A,/ /);for(i in A)print A[i]}' |
    sort -u