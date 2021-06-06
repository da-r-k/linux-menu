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
  	    printf "\t\t${BICyan}FILE AND DIRECTORY MANAGEMENT COMMANDS${Color_Off}\n\n"
	    printf "1 -- Display the contents of a file\n"
	    printf "2 -- Remove a file\n"
	    printf "3 -- Copy a file\n"
	    printf "4 -- List a file\n"
	    printf "5 -- Size of a file\n"
	    printf "${IRed}6 -- Exit Program${Color_Off}\n\n"
	    printf "           Enter your choice:\n\n>>>\t\t   "
	    read a
  	    case "$a" in
		    1) printf "\nEnter the address of the file to be displayed\n\n>>>\t\t"
		        read z
                if [ ! -f $z ]
                    then
                    printf "\n\t${IRed}File not found - Try Again${Color_Off}"
                else
                    printf "\n\n"
		            cat $z 
                fi
                ;;
		    2) printf "\n\nEnter the address of the file to be deleted\n\n>>>\t\t"
		        read m
                if [ ! -f $m ]
                    then
                    printf "\n\t${IRed}File not found - Try Again${Color_Off}"
                else
                    bash l.sh Removing
		            rm $m
                    printf "\n\t${IGreen}File successfully removed${Color_Off}"
                fi
                ;;
		    3) printf "\n\nEnter the address of the file to be copied\n\n>>>\t\t"
		        read b
                if [ ! -f $b ]
                    then
                    printf "\n\t${IRed}File not found - Try Again${Color_Off}"
                else
		            printf "\n\nAddress of the destination file\n\n>>>\t\t"
		            read c
                    if [ ! -f $c ]
                        then
                        printf "\n\t${IRed}File not found - Try Again${Color_Off}"
                    else
                        bash l.sh Copying
                        cp $b $c
                        printf "\n\t${IGreen}File successfully copied${Color_Off}"
                    fi
                fi
                ;;
		    4) printf "\n\nEnter the address of the file\n\n>>>\t\t"
		        read v
                if [ ! -f $v ]
                    then
                    printf "\n\t${IRed}File not found - Try Again${Color_Off}"
                else
                    printf "\n\n"
		            ls -l $v
                fi
                ;;
		    5) printf "\n\nEnter the address of the file\n\n>>>\t\t"
		        read x
                if [ ! -f $x ]
                    then
                    printf "\n\t${IRed}File not found - Try Again${Color_Off}"
                else
		            ls -lh $x | awk '{print $5"B"}'
                fi
                ;;
		    6) bash el.sh
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
  	    printf "\t\t${BICyan}FILE AND DIRECTORY MANAGEMENT COMMANDS${Color_Off}\n\n"
	    printf "1 -- Display the contents of a file\n"
	    printf "2 -- Remove a file\n"
	    printf "3 -- Copy a file\n"
	    printf "4 -- List a file\n"
	    printf "5 -- Size of a file\n"
	    printf "${IRed}6 -- Quit -- Return to Main Menu${Color_Off}\n\n"
	    printf "           Enter your choice:\n\n>>>\t\t   "
	    read a
  	    case "$a" in
		    1) printf "\nEnter the address of the file to be displayed\n\n>>>\t\t"
		        read z
                if [ ! -f $z ]
                    then
                    printf "\n\t${IRed}File not found - Try Again${Color_Off}"
                else
                    printf "\n\n"
		            cat $z 
                fi
                ;;
		    2) printf "\n\nEnter the address of the file to be deleted\n\n>>>\t\t"
		        read m
                if [ ! -f $m ]
                    then
                    printf "\n\t${IRed}File not found - Try Again${Color_Off}"
                else
                    bash l.sh Removing
		            rm $m
                    printf "\n\t${IGreen}File successfully removed${Color_Off}"
                fi
                ;;
		    3) printf "\n\nEnter the address of the file to be copied\n\n>>>\t\t"
		        read b
                if [ ! -f $b ]
                    then
                    printf "\n\t${IRed}File not found - Try Again${Color_Off}"
                else
		            printf "\n\nAddress of the destination file\n\n>>>\t\t"
		            read c
                    if [ ! -f $c ]
                        then
                        printf "\n\t${IRed}File not found - Try Again${Color_Off}"
                    else
                        bash l.sh Copying
                        cp $b $c
                        printf "\n\t${IGreen}File successfully copied${Color_Off}"
                    fi
                fi
                ;;
		    4) printf "\n\nEnter the address of the file\n\n>>>\t\t"
		        read v
                if [ ! -f $v ]
                    then
                    printf "\n\t${IRed}File not found - Try Again${Color_Off}"
                else
                    printf "\n\n"
		            ls -l $v
                fi
                ;;
		    5) printf "\n\nEnter the address of the file\n\n>>>\t\t"
		        read x
                if [ ! -f $x ]
                    then
                    printf "\n\t${IRed}File not found - Try Again${Color_Off}"
                else
                    printf "\n\n"
		            ls -lh $x | awk '{print $5"B"}'
                fi
                ;;
		    6) flag=0 
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