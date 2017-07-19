#!/bin/bash


#cd ~/Github;ls | xargs -n 1 -P 8 bash ~/Github/xargs-colorization/xargs-colorize.sh

# This adds colors for xargs so you can tell your threads apart.
#RED
arr[0]="tput setaf 1"
#GREEN
arr[1]="tput setaf 2"
#YELLOW
arr[2]="tput setaf 3"
#LIME_YELLOW
arr[3]="tput setaf 190"
#BLUE
arr[4]="tput setaf 4"
#POWDER_BLUE
arr[5]="tput setaf 153"
#MAGENTA
arr[6]="tput setaf 5"
#CYAN
arr[7]="tput setaf 6"
#WHITE
arr[8]="tput setaf 7"

for (( i = 0; i < ${#arr} ; i++ )); do
  if mkdir /tmp/arr$i-lock 2> /dev/null; then
    eval ${arr[$i]}
    echo "color lock gained for xargs thread $i"
    break
  fi
done

# Your Parallel script here
git -C $1 pull


rm -r /tmp/arr$i-lock;
