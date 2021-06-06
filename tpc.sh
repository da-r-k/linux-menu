clear
BICyan='\033[1;96m'       # Cyan
Color_Off='\033[0m'       # Text Reset
IRed='\033[0;91m'         # Redclear
IGreen='\033[0;92m'       # Green
BYellow='\033[1;33m'      # Yellow
p=$1
if (($p==1))
then
	while true
	    do
	    clear
	    printf "\t\t${BICyan}TEXT PROCESSING COMMANDS${Color_Off}\n\n"
	    printf "1 -- Search a file for a pattern\n"
	    printf "2 -- Count lines, words, and characters in specified files\n"
	    printf "3 -- Display line differences between two files\n"
	    printf "${IRed}4 -- Exit${Color_Off}\n\n"
	    printf "           Enter your choice:\n\n>>>\t\t   "
	    read a
	case "$a" in
		1) printf "\nEnter the address of the file\n\n>>>\t\t"
	        read z
            if [ ! -f $z ]
                then
                printf "\n\t${IRed}File not found - Try Again${Color_Off}"
            else
		        printf "\nEnter the pattern\n\n>>>\t\t"
		        read p
				printf "\n"
		        grep --color $p $z
				if (( $? != 0 )); then
    				printf "${IRed}The entered pattern does not exist${Color_Off}"
				fi
		        sleep 1s
            fi
        ;;
		2)  printf "\nEnter the address of the file\n\n>>>\t\t"
		    read m
            if [ ! -f $m ]
                then
                printf "\n\t${IRed}File not found - Try Again${Color_Off}"
            else
		        printf "Lines in the file\t"
				wc -l $m | awk '{print $1}'
				printf "Words in the file\t"
				wc -w $m | awk '{print $1}'
				printf "Characters in the file\t"
				wc -c $m | awk '{print $1}'
            fi
		    sleep 1s
        ;;
	    3)  printf "\nEnter the address of the first file\n\n>>>\t\t"
		    read f1
            if [ ! -f $f1 ]
                then
                printf "\n\t${IRed}File not found - Try Again${Color_Off}"
            else
		        printf "\nEnter the address of the second file\n\n>>>\t\t"
		        read f2
                if [ ! -f $f2 ]
                    then
                    printf "\n\t${IRed}File not found - Try Again${Color_Off}"
                else
		            diff $f1 $f2
		            sleep 1s
                fi
            fi
        ;;
		4) bash el.sh
            exit 
        ;;
		*)  printf "${IRed}\n        Invalid choice - Try Again\n\n${Color_Off}"
        ;;
   	    esac
	    printf "\n\n${BYellow}\t"
  	    read -p "Press enter to continue"
        printf "\n\n${Color_Off}"
	done
fi
if (($p==0))
then
	while true
	    do
	    clear
	    printf "\t\t${BICyan}TEXT PROCESSING COMMANDS${Color_Off}\n\n"
	    printf "1 -- Search a file for a pattern\n"
	    printf "2 -- Count lines, words, and characters in specified files\n"
	    printf "3 -- Display line differences between two files\n"
	    printf "${IRed}4 -- Quit -- Return to Main Menu${Color_Off}\n\n"
	    printf "           Enter your choice:\n\n>>>\t\t   "
	    read a
	case "$a" in
		1) printf "\nEnter the address of the file\n\n>>>\t\t"
	        read z
            if [ ! -f $z ]
                then
                printf "\n\t${IRed}File not found - Try Again${Color_Off}"
            else
		        printf "\nEnter the pattern\n\n>>>\t\t"
		        read p
				printf "\n"
		        grep --color $p $z
				if (( $? != 0 )); then
    				printf "${IRed}The entered pattern does not exist${Color_Off}"
				fi
		        sleep 1s
            fi
        ;;
		2)  printf "\nEnter the address of the file\n\n>>>\t\t"
		    read m
            if [ ! -f $m ]
                then
                printf "\n\t${IRed}File not found - Try Again${Color_Off}"
            else
		        printf "Lines in the file\t"
				wc -l $m | awk '{print $1}'
				printf "Words in the file\t"
				wc -w $m | awk '{print $1}'
				printf "Characters in the file\t"
				wc -c $m | awk '{print $1}'
            fi
		    sleep 1s
        ;;
	    3)  printf "\nEnter the address of the first file\n\n>>>\t\t"
		    read f1
            if [ ! -f $f1 ]
                then
                printf "\n\t${IRed}File not found - Try Again${Color_Off}"
            else
		        printf "\nEnter the address of the second file\n\n>>>\t\t"
		        read f2
                if [ ! -f $f2 ]
                    then
                    printf "\n\t${IRed}File not found - Try Again${Color_Off}"
                else
		            diff $f1 $f2
		            sleep 1s
                fi
            fi
        ;;
		4) flag=0
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