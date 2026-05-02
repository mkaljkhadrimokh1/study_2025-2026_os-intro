#!/bin/bash

ext="$1"
dir="$2"

count=0

cd "$dir" || exit 1

for f in *"$ext"
do
    if test -f "$f"
    then
        count=$((count + 1))
    fi
done

echo "$count"