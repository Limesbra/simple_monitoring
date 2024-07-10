#!/bin/bash

function space_root_func {
    SPACE_ROOT=$(df -h / | awk 'NR==2{printf "%.2f MB", $2*1024}')
    echo "SPACE_ROOT = $SPACE_ROOT"
}

function space_root_used_func {
    SPACE_USED=$(df -h / | awk 'NR==2{printf "%.2f MB", $3*1024}')
    echo "SPACE_ROOT_USED = $SPACE_USED"
}

function space_root_free_func {
    SPACE_FREE=$(df -h / | awk 'NR==2{printf "%.2f MB", $4*1024}')
    echo "SPACE_ROOT_FREE = $SPACE_FREE"
}

function exec_root_func {
    space_root_func
    space_root_used_func
    space_root_free_func
}