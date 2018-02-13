#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Give the package list file name as argument"
else
    apm install --packages-file etc/package_lists/$1
fi
