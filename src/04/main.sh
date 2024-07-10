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

if [ -n "$1" ]; then
    echo "Too many arguments"
else
    read_data_func
    if [[ $b_left -eq $b_right || $f_left -eq $f_right ]]; then
        echo "The font and background colors of a column must not match. Please try different parameters and run script again."
    elif [[ ! $b_left =~ ^[1-6]$ || ! $f_left =~ ^[1-6]$ || ! $b_right =~ ^[1-6]$ || ! $f_right =~ ^[1-6]$ ]]; then
            echo "Error: Invalid argument"
    else
        exec_info_func
        exec_net_func
        exec_ram_func
        exec_root_func
        print_with_color_func $b_left $f_left $b_right $f_right
    fi
fi