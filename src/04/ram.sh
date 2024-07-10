#!/bin/bash

function ram_total_func {
    RAM_TOTAL=$(free -h | awk 'NR==2{printf "%.3f GB", $2/1024}')
    # echo "RAM_TOTAL = $RAM_TOTAL"
}

function ram_used_func {
    RAM_USED=$(free -h | awk 'NR==2{printf "%.3f GB", $3/1024}')
    # echo "RAM_USED = $RAM_USED"
}

function ram_free_func {
    RAM_FREE=$(free -h | awk 'NR==2{printf "%.3f GB", $4/1024}')
    # echo "RAM_FREE = $RAM_FREE"
}

function exec_ram_func {
    ram_total_func
    ram_used_func
    ram_free_func
}