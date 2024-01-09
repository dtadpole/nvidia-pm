#!/bin/bash

if [ "$1" = "" ]; then
    echo "Usage: $0 <power>"
    exit 1
fi

nvidia-smi -pm 1
nvidia-smi -pl "$1"