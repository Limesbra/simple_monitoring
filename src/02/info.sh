#!/bin/bash

function hostname_func {
    HOST_NAME=$(hostname)
    echo "Hostname = $HOST_NAME"
}

function timezone_func {
    TIMEZONE=$(timedatectl show --property=Timezone --value)
    echo "Timezone = $TIMEZONE"
}

function user_func {
    USER=$(whoami)
    echo "User = $USER"
}

function os_func {
    OS=$(uname -o)
    echo "OS = $OS"
}

function date_func {
    DA_TE=$(date +"%d %B %Y %T")
    echo "Date = $DA_TE"
}

function uptime_func {
    UP_TIME=$(uptime -p)
    echo "Uptime = $UP_TIME"
}

function uptime_sec_func {
    UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}')
    echo "Uptime in seconds = $UPTIME_SEC"
}
function exec_info_func {
    hostname_func
    timezone_func
    user_func
    os_func
    date_func
    uptime_func
    uptime_sec_func
}
