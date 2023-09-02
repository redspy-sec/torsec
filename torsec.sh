#!/bin/bash
apt update && apt upgrade -y
apt install php -y
apt install tor -y
apt install python -y
clear

white='\e[1;37m'
green='\e[0;32m'                                                                                                      green='\e[0;32m'
blue='\e[1;34m'
red='\e[1;31m'
yellow='\e[1;33m'


echo -e '\e[1;33m\e[0m\e[1;31m████████╗ ██████╗ ██████╗ ███████╗███████╗ ██████╗\e[0m'
echo -e '\e[1;33m\e[0m\e[1;31m╚══██╔══╝██╔═══██╗██╔══██╗██╔════╝██╔════╝██╔════╝\e[0m'
echo -e '\e[1;33m\e[0m\e[1;31m   ██║   ██║   ██║██████╔╝███████╗█████╗  ██║\e[0m'
echo -e '\e[1;33m\e[0m\e[1;31m   ██║   ██║   ██║██╔══██╗╚════██║██╔══╝  ██║\e[0m'
echo -e '\e[1;33m\e[0m\e[1;31m   ██║   ╚██████╔╝██║  ██║███████║███████╗╚██████╗\e[0m'
echo -e '\e[1;33m\e[0m\e[1;31m   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝\e[0m'
echo
echo

echo ""

kill -9 $php >/dev/null 2>&1
kill -9 $tor > /dev/null 2>&1

echo ""

echo -e "starting php localhost http server"

php -S 127.0.0.1:8080 > /dev/null 2>&1 &
sleep 3

echo -e " http server up"
echo
echo -e " You can check your server by accessing localhost:8080 "
echo 
echo
cd /data/data/com.termux/files/usr/var/lib/
mkdir tor
cd tor
mkdir hidden_service
cd /data/data/com.termux/files/usr/var/lib/tor/hidden_service
cd /data/data/com.termux/files/usr/etc/tor
rm torrc
cd $HOME/torsec/
cp torrc /data/data/com.termux/files/usr/etc/tor
echo
tor &
sleep 60
echo ""
cd /data/data/com.termux/files/usr/var/lib/tor/hidden_service
echo
clear
printf ${red}
echo "
████████╗ ██████╗ ██████╗ ███████╗███████╗ ██████╗
╚══██╔══╝██╔═══██╗██╔══██╗██╔════╝██╔════╝██╔════╝
   ██║   ██║   ██║██████╔╝███████╗█████╗  ██║
   ██║   ██║   ██║██╔══██╗╚════██║██╔══╝  ██║
   ██║   ╚██████╔╝██║  ██║███████║███████╗╚██████╗
   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝
"
echo -e                             " code by VIJIL :)"
echo ""
echo
echo -e "Your Onion Site is Ready !"
echo -e '\e[31m[\e[32m★\e[31m]\e[32m Your Dark Web Link \e[m '
echo -e "\e[91m "
echo
cat hostname
echo
echo -e "\e[39m "
echo -e "Press CTRL + C to Exit"
echo ""
while true
do
sleep 5
done
}

