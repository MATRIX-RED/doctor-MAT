#!/bin/bash

clear
cmatrix -C green -u 5 &  # مؤثر سحري مثل فيلم Matrix
CM_PID=$!
sleep 3
kill $CM_PID

clear
figlet "MATRIX" | lolcat
echo -e "\e[1;32mWelcome to the Matrix Terminal Style by \e[1;36mMATRIX\e[0m"
echo -e "\e[1;33mTelegram Contact: @matrix4499\e[0m"
sleep 2
clear

