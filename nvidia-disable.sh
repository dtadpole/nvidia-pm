#!/bin/bash

if [ "$1" = "" ]; then
    echo "Usage: $0 <index>"
    echo "   e.g. $0 0000:01:00.0"
    exit 1
fi

nvidia-smi -i "$1" -pm 0
nvidia-smi drain -p "$1" -m 1

