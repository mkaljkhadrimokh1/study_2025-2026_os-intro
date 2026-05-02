#!/bin/bash

cd "$1" || exit 1

for f in *
do
    echo -n "$f : "

    if test -d "$f"
    then
        echo -n "directory "
    else
        echo -n "file "
    fi

    if test -r "$f"
    then
        echo -n "readable "
    fi

    if test -w "$f"
    then
        echo -n "writable "
    fi

    echo
done