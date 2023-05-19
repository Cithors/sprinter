#! /bin/bash
#
# Scriptname 	: spriter
# Description 	: A little script that help you follow sprint
# Usage		    : ./sprinter
#
# Author	    : Christopher HOSTIN
# Github	    : Cithors

#############
# Variables #
#############

main=20
delay=5
loop=4
break=15

#############
# Functions #
#############

########
# Code #
########


if [ $# -gt 3 ]; then
    echo -e "Too much arguments given ($#)!\nExiting..."
    exit 0
fi

if [ $# -ne 0 ];then
    if [ $1 != 0 ];then
        main=$1
    fi
    if [ $# -ne 1 ];then
        if [ $2 != 0 ];then
            delay=$2
        fi
        if [ $# -ne 2 ];then
            if [ $3 != 0 ]; then
                loop=$3
            fi
        fi
    fi
fi

# echo -e "Main is : ${main}\nDelay is : ${delay}"

for rush in $(seq 1 ${loop});do
    notify-send Sprint "Sprit ${rush} - GO !"
    echo "Sprit ${rush} - GO !"
    sleep ${main}m
    notify-send Sprint "Sprit ${rush} - STOP !"
    echo "Sprit ${rush} - STOP !"
    sleep 5s
    notify-send Sprint "Pause ${rush} - GO !"
    echo "Pause ${rush} - GO !"
    sleep ${delay}m
    notify-send Sprint "Pause ${rush} - STOP !"
    echo "Pause ${rush} - STOP !"
done

# sprint