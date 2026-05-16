#!/bin/bash

LOCKFILE="/tmp/semaphore.lock"

while true
do
    if [ ! -f "$LOCKFILE" ]; then
        echo $$ > "$LOCKFILE"
        echo "Процесс $$ использует ресурс"
        sleep 5
        rm -f "$LOCKFILE"
        echo "Процесс $$ освободил ресурс"
        break
    else
        echo "Ресурс занят. Процесс $$ ожидает..."
        sleep 2
    fi
done
