#!/bin/bash

while true
do

echo -e "\e[32m1. Show Uptime 💻\e[0m"
echo -e "\e[31m2. Show RAM Usage 🦿\e[0m"
echo -e "\e[33m3. Show Disk Usage 💾\e[0m"
echo -e "\e[34m4. Show IP Address 📍\e[0m"
echo -e "\e[35m5. Exit 😏\e[0m"

read -p "Enter the option: " option

case $option in

1)
echo -e "\e[31m"
uptime
echo -e "\e[0m"
;;

2)
echo -e "\e[32m"
free -h
echo -e "\e[0m"
;;

3)
echo -e "\e[33m"
df -h
echo -e "\e[0m"
;;

4)
echo -e "\e[34m"
ifconfig | grep inet
echo -e "\e[0m"
;;

5)
echo -e "\e[35mExiting.... 😏\e[0m"
break
;;

*)
echo "Invalid Option ❌"
;;

esac

done
