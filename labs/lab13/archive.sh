#!/bin/bash

dir=$1

if [ -z "$dir" ]; then
    echo "Usage: ./archive.sh directory"
    exit 1
fi

find "$dir" -type f -mtime -7 | tar -cvf archive.tar -T -
