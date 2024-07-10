#!/bin/bash
source ./info.sh
source ./net.sh
source ./root.sh
source ./ram.sh
source ./print.sh

if [ ! -n "$1" ]; then
    chmod +x ./info.sh
    chmod +x ./net.sh
    chmod +x ./root.sh
    chmod +x ./ram.sh
    chmod +x ./print.sh

    exec_info_func
    exec_net_func
    exec_ram_func
    exec_root_func

    echo -n "save to file? [Y/N] "
    read answer
    if [ "$answer" == "Y" ] || [ "$answer" == "y" ]; then
        filename=$(date +"%d_%m_%y_%H_%M_%S.status")
        print_to_file_func
        echo "File saved"
    fi
else
    echo "Error: Too many arguments"
fi