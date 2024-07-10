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
color=(
  [1]="(white)"
  [2]="(red)"
  [3]="(green)"
  [4]="(blue)"
  [5]="(purple)"
  [6]="(black)"
)

function check_empty_func {
  if [ -z "$b_left" ]; then
  b_left=1
  fi
  if [ -z "$f_left" ]; then
  f_left=2
  fi
  if [ -z "$b_right" ]; then
  b_right=3
  fi
  if [ -z "$f_right" ]; then
  f_right=4
  fi
}

function read_data_func {
  line1=$(grep "column1_background=" conf)
  line2=$(grep "column1_font_color=" conf)
  line3=$(grep "column2_background=" conf)
  line4=$(grep "column2_font_color=" conf)
  b_left=$(echo "$line1" | cut -d '=' -f2 | sed 's/ *$//')
  f_left=$(echo "$line2" | cut -d '=' -f2 | sed 's/ *$//')
  b_right=$(echo "$line3" | cut -d '=' -f2 | sed 's/ *$//')
  f_right=$(echo "$line4" | cut -d '=' -f2 | sed 's/ *$//')
  check_empty_func
}

function print_with_color_func {
  echo -e "${background[$b_left]}${font[$f_left]}Hostname =${background[$b_right]}${font[$f_right]}$HOST_NAME\\e[0m"
  echo -e "${background[$b_left]}${font[$f_left]}Timezone =${background[$b_right]}${font[$f_right]}$TIMEZONE\\e[0m"
  echo -e "${background[$b_left]}${font[$f_left]}User =${background[$b_right]}${font[$f_right]}$USER\\e[0m"
  echo -e "${background[$b_left]}${font[$f_left]}OS =${background[$b_right]}${font[$f_right]}$OS\\e[0m"
  echo -e "${background[$b_left]}${font[$f_left]}Date =${background[$b_right]}${font[$f_right]}$DA_TE\\e[0m"
  echo -e "${background[$b_left]}${font[$f_left]}Uptime =${background[$b_right]}${font[$f_right]}$UP_TIME\\e[0m"
  echo -e "${background[$b_left]}${font[$f_left]}Uptime in seconds =${background[$b_right]}${font[$f_right]}$UPTIME_SEC\\e[0m"
  echo -e "${background[$b_left]}${font[$f_left]}IP =${background[$b_right]}${font[$f_right]}$I_P\\e[0m"
  echo -e "${background[$b_left]}${font[$f_left]}Mask =${background[$b_right]}${font[$f_right]}$MASK\\e[0m"
  echo -e "${background[$b_left]}${font[$f_left]}Gateway =${background[$b_right]}${font[$f_right]}$GATEWAY\\e[0m"
  echo -e "${background[$b_left]}${font[$f_left]}RAM_TOTAL =${background[$b_right]}${font[$f_right]}$RAM_TOTAL\\e[0m"
  echo -e "${background[$b_left]}${font[$f_left]}RAM_USED =${background[$b_right]}${font[$f_right]}$RAM_USED\\e[0m"
  echo -e "${background[$b_left]}${font[$f_left]}RAM_FREE =${background[$b_right]}${font[$f_right]}$RAM_FREE\\e[0m"
  echo -e "${background[$b_left]}${font[$f_left]}SPACE_ROOT =${background[$b_right]}${font[$f_right]}$SPACE_ROOT\\e[0m"
  echo -e "${background[$b_left]}${font[$f_left]}SPACE_ROOT_USED =${background[$b_right]}${font[$f_right]}$SPACE_USED\\e[0m"
  echo -e "${background[$b_left]}${font[$f_left]}SPACE_ROOT_FREE =${background[$b_right]}${font[$f_right]}$SPACE_FREE\\e[0m"
  print_options_func
}

function print_options_func {
  echo ""
  if [ "${b_left}" -eq 1 ]; then
    echo "column1_background = default ${color[$b_left]}"
  else
    echo "column1_background = ${b_left} ${color[$b_left]}"
  fi
  if [ "${f_left}" -eq 2 ]; then
    echo "column1_font_color = default ${color[$f_left]}"
  else
    echo "column1_font_color = ${f_left} ${color[$f_left]}"
  fi
  if [ "${b_right}" -eq 3 ]; then
    echo "column2_background = default ${color[$b_right]}"
  else
    echo "column2_background = ${b_right} ${color[$b_right]}"
  fi
  if [ "${f_right}" -eq 4 ]; then
    echo "column2_font_color = default ${color[$f_right]}"
  else
    echo "column2_font_color = ${f_right} ${color[$f_right]}"
  fi
}