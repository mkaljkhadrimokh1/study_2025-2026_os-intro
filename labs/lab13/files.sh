#!/bin/bash

action=$1
count=$2

if [ -z "$action" ] || [ -z "$count" ]; then
    echo "Usage: ./files.sh create N"
    echo "or: ./files.sh delete N"
    exit 1
fi

if [ "$action" = "create" ]; then
    for ((i=1; i<=count; i++))
    do
        touch "$i.tmp"
    done
elif [ "$action" = "delete" ]; then
    for ((i=1; i<=count; i++))
    do
        if [ -f "$i.tmp" ]; then
            rm "$i.tmp"
        fi
    done
else
    echo "Unknown command"
fi
