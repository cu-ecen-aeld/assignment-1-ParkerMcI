#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Required parameters not specified"
    exit 1
fi

writefile=$1
writestr=$2


dirpath=$(dirname "$writefile")

if [ ! -d "$dirpath" ]; then
    mkdir -p "$dirpath" || { echo "Could not create directory path '$dirpath'."; exit 1; }
fi

echo "$writestr" > "$writefile"

if [ "$?" -ne 0 ]; then
    echo "File could not be created."
    exit 1
fi
