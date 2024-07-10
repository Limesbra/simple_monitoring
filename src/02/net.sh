#!/bin/bash

function ip_func {
    I_P=$(hostname -I)
    echo "IP = $I_P"
}

function mask_func {
    MASK=$(ifconfig enp0s3 | awk '/netmask/{print $4}')
    echo "Mask = $MASK"
}

function gateway_func {
    GATEWAY=$(ip route show default | awk '{print $3}')
    echo "Gateway = $GATEWAY"
}

function exec_net_func {
    ip_func
    mask_func
    gateway_func
}
