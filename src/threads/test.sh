#!/bin/bash

#remove all result files
rm -rf build/tests/threads/*

#priority tests
declare -a testlist=(
    "alarm-multiple.result"
    "alarm-negative.result"
	"alarm-priority.result"
	"alarm-simultaneous.result"
	"alarm-zero.result"
)

for i in "${testlist[@]}"; do
    make build/tests/threads/$i
done
