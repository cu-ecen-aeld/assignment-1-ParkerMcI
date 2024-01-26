#!/bin/bash

filedir=$1
searchStr=$2

if [ $# -lt 2 ]
then
    echo "Arguments not specified"
    exit 1
elif [ -d $filedir ]
then
    filesNum=$(grep -rl $searchStr $filedir | wc -l)
    linesNum=$(grep -r $searchStr $filedir | wc -l)
    echo "The number of files are $filesNum and the number of matching lines are $linesNum"
else
    echo "$filedir does not a directory"
    exit 1
fi
