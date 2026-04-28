#!/bin/bash 

# sudo is required to run script
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo -e "This script must be run as root or using sudo.\nPlease try: sudo $0"
    exit 1
fi

user_list=("user6" "user2" "user3" "user4" "user5")

length=${#user_list[@]}
echo "Length is : $length" 
for (( i=0; i<$length; i++)); 
do 
    echo "$((i+1)). Creating account for : ${user_list[i]}"
    sudo useradd -m -s /bin/bash "${user_list[i]}"
    echo "${user_list[i]}:default123" | chpasswd
    sudo chage -d 0 "${user_list[i]}"
    echo " ✅ Successfully Create account for ${user_list[i]}"
done 


# Backup database 
# Clean up data 