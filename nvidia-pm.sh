#!/bin/bash

if [ "$1" = "" ]; then
    echo "Usage: $0 <power> [index]"
    exit 1
fi

if [ "$2" = "" ]; then
    nvidia-smi -pm 1
    nvidia-smi -pl "$1"
else
    nvidia-smi -i "$2" -pm 1
    nvidia-smi -i "$2" -pl "$1"
fi
