On_Green='\033[0;42m'       # Green
Color_Off='\033[0m'       # Text Reset
IYellow='\033[0;93m'      # Yellow
BIGreen='\033[1;92m'      # Green
BAR='                                        '
printf "\n\t\t${BIGreen}$1\n\n"
for i in {1..40}; do
    echo -ne "${On_Green}\r${BAR:0:$i}" 
    sleep .03                 
done
printf "${Color_Off}\n\n"