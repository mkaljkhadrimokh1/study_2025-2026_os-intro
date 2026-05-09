#!/bin/bash

ignore_case="-i"
show_number=""
output=""
input=""
pattern=""

while getopts "i:o:p:Cn" opt
do
    case $opt in
        i) input="$OPTARG" ;;
        o) output="$OPTARG" ;;
        p) pattern="$OPTARG" ;;
        C) ignore_case="" ;;
        n) show_number="-n" ;;
        *) echo "Wrong option"; exit 1 ;;
    esac
done

if [ -z "$input" ] || [ -z "$pattern" ]; then
    echo "Usage: ./search.sh -i inputfile -p pattern"
    exit 1
fi

if [ -n "$output" ]; then
    grep $ignore_case $show_number "$pattern" "$input" > "$output"
else
    grep $ignore_case $show_number "$pattern" "$input"
fi
