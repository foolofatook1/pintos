#!/bin/bash

#remove all result files
rm -rf build/tests/threads/*

declare -a testlist=
(
    "alarm-multiple.result"
    "alarm-negative.result"
)

for i in "${testlist[@]}"; do
    make build/tests/threads/$i
done
