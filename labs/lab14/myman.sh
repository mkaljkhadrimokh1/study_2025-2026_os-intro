#!/bin/bash

MAN_DIR="/usr/share/man/man1"

if [ -z "$1" ]; then
    echo "Использование: ./myman.sh <command>"
    exit 1
fi

FILE=$(find "$MAN_DIR" -name "$1.1.gz")

if [ -f "$FILE" ]; then
    less "$FILE"
else
    echo "Справка для команды $1 не найдена."
fi
