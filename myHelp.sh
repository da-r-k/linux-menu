BICyan='\033[1;96m'       # Cyan
Color_Off='\033[0m'       # Text Reset
IRed='\033[0;91m'         # Red
clear
if (("$#"=="1"))
    then 
  	case "$*" in
		help)   clear
            bash l.sh Loading
            bash help.sh
            ;;			 
		file) bash l.sh Loading
            bash fmc.sh 1 
            ;;
		text) bash l.sh Loading
            bash tpc.sh 1 
            ;;
		status) bash l.sh Loading
            bash ssc.sh 1 
            ;;
	esac
else
  	printf "           ${BICyan}UNIX HELP MAIN MENU${Color_Off}\n\n"
  	printf "1 -- File and Directory Management Commands\n"
  	printf "2 -- Text Processing Commands\n"
  	printf "3 -- System Status Commands\n"
  	printf "${IRed}4 -- Exit ${Color_Off}\n\n"
  	printf "           Enter your choice:\n\n>>>\t\t   "
  	read a
    
  	case "$a" in
   	      1) bash l.sh Loading 
                  bash fmc.sh 0 
            ;;
   		2) bash l.sh Loading 
                  bash tpc.sh 0 
            ;;
   		3) bash l.sh Loading 
                  bash ssc.sh 0 
            ;;
   		4) bash el.sh
           exit
           ;;
        *) printf "${IRed}\n        Invalid choice - Try Again\n\n${Color_Off}"
           bash l.sh Loading
           bash myHelp.sh
        ;;
  	esac
fi