On_Red='\033[41m'         # Red
Color_Off='\033[0m'       # Text Reset
IYellow='\033[0;93m'      # Yellow
BIRed='\033[1;91m'        # Red
BAR='                                        '   
printf "\n\t\t${BIRed}Exiting\n\n"
for i in {1..40}; do
    echo -ne "${On_Red}\r${BAR:0:$i}" 
    sleep .05                 
done
printf "${IYellow}\n\n           Have a nice day 😀\n\n"