#!/bin/bash

LETTERS=abcdefghijklmnopqrstuvwxyz

for ((i=0; i<10; i++))
do
    INDEX=$((RANDOM % 26))
    echo -n "${LETTERS:$INDEX:1}"
done

echo
