#!/bin/bash

if [ -n "$1" ]; then
    if [ -n "$2" ]; then
        echo "Error: Too many arguments"
    else
        if [[ $1 =~ ^[0-9]+$ ]]; 
        then
            echo "Error: Invalid argument"
        else
            echo "$1"
        fi
    fi
else
echo "No parameters found"
fi