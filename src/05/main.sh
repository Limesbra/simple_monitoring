#!/bin/bash

source ./support.sh

chmod +x ./support.sh

if [ -n "$1" ]; then
    if [ -n "$2" ]; then
        echo "Error: Too many arguments"
    else
        if [ -d "$1" ]; then
            path="$1*"
            folders=$(find $1 -type d | wc -l)
            echo "Total number of folders (including all nested ones) = $folders"
            top_5_folders_func
            count_type_files_func
            top_10_files_func
            top_10_exec_files_func
            echo "Script execution time: $SECONDS seconds"
        else
            echo "Error: Invalid path"
        fi
    fi
else
    echo "No parameters found"
fi
