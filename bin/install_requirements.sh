#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Using pip as python package manager not specified in argument."
    INSTALLER=pip
else
    INSTALLER=$1
fi
while read requirement; do yes | $INSTALLER install $requirement; done < requirements.txt
