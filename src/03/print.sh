#!/bin/bash
background=(
  [1]=$'\033[107m' # white
  [2]=$'\033[41m'  # red
  [3]=$'\033[42m'  # green
  [4]=$'\033[46m'  # blue
  [5]=$'\033[45m'  # purple
  [6]=$'\033[40m'  # black
)
font=(
  [1]=$'\033[97m' # white
  [2]=$'\033[31m'  # red
  [3]=$'\033[32m'  # green
  [4]=$'\033[36m'  # blue
  [5]=$'\033[35m'  # purple
  [6]=$'\033[30m'  # black
)

function print_with_color_func {
    echo -e "${background[$1]}${font[$2]}Hostname =${background[$3]}${font[$4]}$HOST_NAME\\e[0m"
    echo -e "${background[$1]}${font[$2]}Timezone =${background[$3]}${font[$4]}$TIMEZONE\\e[0m"
    echo -e "${background[$1]}${font[$2]}User =${background[$3]}${font[$4]}$USER\\e[0m"
    echo -e "${background[$1]}${font[$2]}OS =${background[$3]}${font[$4]}$OS\\e[0m"
    echo -e "${background[$1]}${font[$2]}Date =${background[$3]}${font[$4]}$DA_TE\\e[0m"
    echo -e "${background[$1]}${font[$2]}Uptime =${background[$3]}${font[$4]}$UP_TIME\\e[0m"
    echo -e "${background[$1]}${font[$2]}Uptime in seconds =${background[$3]}${font[$4]}$UPTIME_SEC\\e[0m"
    echo -e "${background[$1]}${font[$2]}IP =${background[$3]}${font[$4]}$I_P\\e[0m"
    echo -e "${background[$1]}${font[$2]}Mask =${background[$3]}${font[$4]}$MASK\\e[0m"
    echo -e "${background[$1]}${font[$2]}Gateway =${background[$3]}${font[$4]}$GATEWAY\\e[0m"
    echo -e "${background[$1]}${font[$2]}RAM_TOTAL =${background[$3]}${font[$4]}$RAM_TOTAL\\e[0m"
    echo -e "${background[$1]}${font[$2]}RAM_USED =${background[$3]}${font[$4]}$RAM_USED\\e[0m"
    echo -e "${background[$1]}${font[$2]}RAM_FREE =${background[$3]}${font[$4]}$RAM_FREE\\e[0m"
    echo -e "${background[$1]}${font[$2]}SPACE_ROOT =${background[$3]}${font[$4]}$SPACE_ROOT\\e[0m"
    echo -e "${background[$1]}${font[$2]}SPACE_ROOT_USED =${background[$3]}${font[$4]}$SPACE_USED\\e[0m"
    echo -e "${background[$1]}${font[$2]}SPACE_ROOT_FREE =${background[$3]}${font[$4]}$SPACE_FREE\\e[0m"
}