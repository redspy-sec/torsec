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
echo -e                           "code by VIJIL :) "
echo
echo
echo -e "${white}[1]" "${red} start torsec"
echo
echo -e "${white}[2]" "${red} help"
echo
echo -e "${white}[3]" "${red} menu"
echo
echo -e "${white}[4]" "${red} exit"
echo
echo
start(){

read -p " Enter your Name :" name

echo "<html>
<head>
<title>welcome</title>
  <link rel="icon" href="https://j.top4top.io/p_23842mzuu0.png">
  <meta name="description" content="welcom to REDSPY">
 </head>
<body bgcolor='black'>
<center>
 <br>
<style type="text/css"> 
html{
 font-family:'Neucha';
 color:white;
 }
.lagu{ 
background:black;
 border:2px solid #FF000F;
 text-shadow:0px 0px 5px red;
 border-radius:13px;
 font-family:'Shadows Into Light';
 color:blue;
 font-size:18x; 
font-weight:bold; 
padding:3px 29px;
 text-decoration:none; 
text-shadow:0px 0px 20px #FF000F;
 } 
 h1,h2{
  color:white;
  font-family:'Shadows Into Light';
  text-shadow:0px 0px 6px #FF000F;
  size:10pt;
  }
</style> 
<div>
<img src=" https://j.top4top.io/p_2384rvemm0.jpg" widht="400" height="400"><br>
<h1> welcom $name </h1>
    <div class="noise"></div>
<div class="overlay"></div>
<div class="terminal">
  <h1>-----------------<span class="----------------">----</span></h1>
  <p class="output">The page you are looking is hosting form tor network or using onion service </p>
  <p class="output">if any </a>.Doubt ↓</p>
  <p class="output">REDSPY TECH <a href="https://www.youtube.com/c/REDSPYTECH">SUBSCRIBE </a>.</p>
  <p class="output">telegram<a href="https://t.me/joinchat/2GBDnRZmsS8xNjJl">join</a>.</p>
  <p class="output">Happy Hacking......!.</p>
  <p>​ </p>
  <p>​ </p>
  <footer>
</footer>
</div>
<br><br>&#12300; <marquee height='23' width='30%' behavior='alternate' scrollamount='15'><font size="4" face="Shadows Into Light" color="#FF000F">----welcom---- </marquee> &#12301;<br><br><br><h2>&copy2017-2021 | Malayali </h2></div>
</body>
</html>" >index.html

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

read -p " Enter your option :" option
if [[ $option == "1" ]]; then
echo
start
 elif [[ $option == "2" ]]; then
echo "this tool only work termux "
 elif [[ $option == "3" ]]; then
echo " menu"
 elif [[ $option == "4" ]]; then
echo "exit"
break
exit

else
        echo ${R}"[*] Error, Select a option from the above list"
        echo
fi

