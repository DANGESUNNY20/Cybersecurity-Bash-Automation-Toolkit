

#!/bin/bash 

echo " 1. check present workind directory " 
echo " 2. uptime " 
echo " 3. check home direcotry " 
echo " 4. check  ip address of the system " 
echo " 5. check  disk partition of the system " 

read -p "enter your choice " choice

case $choice in 

1)  pwd 
  ;;
2) uptime 
  ;;
3) ls /home
 ;;
4) ifconfig | grep inet 
 ;;
5)  lablk
  ;;
*) echo " invalid options "
esac 




