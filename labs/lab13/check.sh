#!/bin/bash

./number
result=$?

if [ $result -eq 1 ]; then
    echo "Positive number"
elif [ $result -eq 2 ]; then
    echo "Negative number"
else
    echo "Zero"
fi
