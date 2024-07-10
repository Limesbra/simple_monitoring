#!/bin/bash

function print_to_file_func {
    echo "Hostname = $HOST_NAME" >> "$filename"
    echo "Timezone = $TIMEZONE" >> "$filename"
    echo "User = $USER" >> "$filename"
    echo "OS = $OS" >> "$filename"
    echo "Date = $DA_TE" >> "$filename"
    echo "Uptime = $UP_TIME" >> "$filename"
    echo "Uptime in seconds = $UPTIME_SEC" >> "$filename"
    echo "IP = $I_P" >> "$filename"
    echo "Mask = $MASK" >> "$filename"
    echo "Gateway = $GATEWAY" >> "$filename"
    echo "RAM_TOTAL = $RAM_TOTAL" >> "$filename"
    echo "RAM_USED = $RAM_USED" >> "$filename"
    echo "RAM_FREE = $RAM_FREE" >> "$filename"
    echo "SPACE_ROOT = $SPACE_ROOT" >> "$filename"
    echo "SPACE_ROOT_USED = $SPACE_USED" >> "$filename"
    echo "SPACE_ROOT_FREE = $SPACE_FREE" >> "$filename"
}