trap ' ' 2
banner () {
clear
echo -e "\e[1;35m

 ______                     _______ 
(  __  \ |\     /||\     /|(  ___  )
| (  \  )| )   ( || )   ( || (   ) |
\e[1;34m| |   ) || |   | || | _ | || (___) |
\e[1;36m| |   | |( (   ) )| |( )| ||  ___  |
\e[1;33m| |   ) | \ \_/ / | || || || (   ) |
\e[1;31m| (__/  )  \   /  | () () || )   ( |
(______/    \_/   (_______)|/     \|
\e[1;34mName::DVWA Install In Termux
Script::BASH
Coder::Yell Phone Naing
github::https://www.github.com/T-Tools
Note::For Installing DVWA,Almost 80 Mb Of Your
Internet Data and 120 Mb of Disk Space Will be used
"
choose
}
choose () {
echo -e "\e[1;35mPlease Select A Number
(1)Install DVWA
(2)Exit\e[0m"
read -p $'\e[35m Enter Your Choice:: \e[0m' number
case $number in
1)
install;;
2)
exit;;
*)
banner;;
esac
}
install () {
pkg install php
pkg install mariadb
cp dvwa /data/data/com.termux/files/usr/bin
cp database /data/data/com.termux/files/usr/bin
cd /data/data/com.termux/files/usr/bin
chmod +x dvwa
chmod +x database
cd
git clone https://github.com/ethicalhack3r/DVWA
cd DVWA/config
mv config.inc.php.dist config.inc.php
}
exit () {
echo -e "\e[1;35m Thanks For Using My Tool,Good Luck
Bye Bye\e[0m"
}
banner
trap 2
