#!/bin/bash

# ----------------------------------
# Colors
# ----------------------------------
NOCOLOR='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'

echo_color(){
  if [ $# -ge 2 ];then
    color=$(eval '(echo \${$1})')
    command="echo -e ${color} $2 \${NOCOLOR}"
    eval $command
  else
    echo "${YELLOW}You must specify color and message${NOCOLOR}"
  fi
}

echo_color_red(){
  echo_color RED "${1}"
}

echo_color_blue(){
  echo_color BLUE "${1}"
}

echo_color_yellow(){
  echo_color YELLOW "${1}"
}

goto_project_source() {
  cd $CODEBUILD_SRC_DIR
}