#!/bin/bash

greenbreak="\e[1;33m-------------------\e[1;0m"
redbreak="\e[1;31m...................\e[1;0m"

echo -e $greenbreak
date
echo -e $greenbreak

w
echo -e $greenbreak

last -a | head -3
echo -e $greenbreak

df -h | xargs | awk '{print "Free/Total Disk: " $11 "/" $9}'
free -m | xargs | awk '{print "Free/Total Mem: " $17 "/" $8 " MB"}'
echo -e $greenbreak
ps -aufx
echo -e $redbreak
