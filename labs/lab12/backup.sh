#!/bin/bash

mkdir -p "$HOME/backup"

name=$(basename "$0")

tar -czf "$HOME/backup/${name}.tar.gz" "$0"