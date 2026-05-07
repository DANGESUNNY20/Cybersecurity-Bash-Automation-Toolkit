
#1. Check Internet Status
#2. DNS Lookup
#3. Show Routing Table
#4. Exit


#!/bin/bash

echo -e "\e[31m 1.check internet status \e[0m"
echo -e "\e[32m 2.dns lookup \e[0m"
echo -e "\e[33m 3.show routing table \e[0m"
echo -e "\e[34m 4.exit \e[0m"

while true
do
read -p " enter the option " option
case $option in 

1) echo -e "\e[32m"
   ping -c 1 google.com
  if
   [ $? -eq 0 ]
then 
echo "internet working "
else
echo " check your internet connectivity "
  fi
echo -e "\e[0m"

;;
2) echo -e "\e[31m"
 dig +short google.com 
 if [ $? -eq 0 ]
then 
echo " dig successful "
else 
echo " dig Unsuccessful "
fi
echo -e "\e[0m"
;;
3)echo -e "\e[33m"
 ip route
if [ $? -eq 0 ]
then
echo "successful"
else
echo "unsuccessful"
fi
echo -e "\e[0m"
;;
4) echo "[+] [+] [+] exiting.....😏 [+][+][+] "
break
;;
*) echo " invalid option ❌ "
;;


esac
done


 




  
