#!/bin/bash

source ./info.sh
source ./net.sh
source ./root.sh
source ./ram.sh
source ./print.sh

chmod +x ./main.sh
chmod +x ./info.sh
chmod +x ./net.sh
chmod +x ./root.sh
chmod +x ./ram.sh
chmod +x ./print.sh

if [ -n "$4" ]; then
    if [ "$#" -gt 4 ]; then
        echo "Error: Too many arguments"
    elif [[ ! $1 =~ ^[1-6]$ || ! $2 =~ ^[1-6]$ || ! $3 =~ ^[1-6]$ || ! $4 =~ ^[1-6]$ ]]; then
            echo "Error: Invalid argument"
    elif [[ $1 -eq $2 || $3 -eq $4 ]]; then
            echo "The font and background colors of a column must not match. Please try different parameters and run script again."
    else
        exec_info_func
        exec_net_func
        exec_ram_func
        exec_root_func
        print_with_color_func $1 $2 $3 $4

    fi
else
    echo "No parameters found"
fi


