#!/bin/bash 
docker -v &> /dev/null || {
    echo "Docker is not installed  "
    # sudo apt update && sudo apt upgrade -y 
    # sudo apt install docker -y 
}

docker -v &> /dev/null
if [[ $? -eq 0 ]]; then 
    echo "Docker is installed on the system" 
else 
    echo "Install docker first " 
fi 

