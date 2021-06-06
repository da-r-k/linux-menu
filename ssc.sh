clear
BICyan='\033[1;96m'       # Cyan
Color_Off='\033[0m'       # Text Reset
IRed='\033[0;91m'         # Redclear
IGreen='\033[0;92m'       # Green
BYellow='\033[1;33m'      # Yellow
p=$1
if (($p == 1))
then
	while true
	do
	  clear
	  printf "\t\t${BICyan}SYSTEM STATUS COMMANDS${Color_Off}\n\n"
	  printf "1 -- Display the current date and time\n"
	  printf "2 -- Current disk usage\n"
	  printf "3 -- List current local and environmental\n"
	  printf "4 -- Display process status information\n"
	  printf "${IRed}5 -- Exit Program${Color_Off}\n\n"
	  printf "           Enter your choice:\n\n>>>\t\t   "
	  read a
      printf "\n\n"
	  case "$a" in
	  	1) date "+DATE: %D%nTIME: %T"
        ;;
	  	2) df -H;;
	  	3) compgen -v;;
	  	4) ps ;; 
	  	5) bash el.sh
            exit 
        ;;
        *)  printf "${IRed}        Invalid choice - Try Again\n\n${Color_Off}"
        ;;
	    esac
  	    printf "\n\n${BYellow}\t"
  	    read -p "Press enter to continue"
        printf "\n\n${Color_Off}"
	done
fi
if (($p == 0))
then
	while true
	do
	  clear
	  printf "\t\t${BICyan}SYSTEM STATUS COMMANDS\n\n${Color_Off}"
	  printf "1 -- Display the current date and time\n"
	  printf "2 -- Current disk usage\n"
	  printf "3 -- List current local and environmental\n"
	  printf "4 -- Display process status information\n"
	  printf "${IRed}5 -- Quit -- Return to Main Menu\n\n${Color_Off}"
	  printf "           Enter your choice:\n\n>>>\t\t   "
	  read a
      printf "\n\n"
	  case "$a" in
	  	1)  date "+DATE: %D%nTIME: %T"
        ;;
	  	2) df -H;;
	  	3) compgen -v;;
	  	4) ps ;; 
	  	5) flag=0
		   break
        ;;
        *)  printf "${IRed}\n        Invalid choice - Try Again\n\n${Color_Off}"
        ;;
 	    esac
  	    printf "\n\n${BYellow}\t"
  	    read -p "Press enter to continue"
        printf "\n\n${Color_Off}"
	done
fi
if (( $flag == 0 ))
then
bash l.sh Loading
bash myHelp.sh
fi