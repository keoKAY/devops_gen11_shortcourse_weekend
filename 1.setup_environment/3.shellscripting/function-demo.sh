#!/bin/bash 
function_name="$1" 
function greeting(){
    local username="$1"
    echo "Welcome back to the server" 
    echo "You are : $username" 
}
check_service(){
    local service_name="$1"
    if systemctl is-active --quiet "$service_name"; then 
        echo "${service_name^^} is active ✅" 
    else 
        echo "${service_name^^} is not active ❌" 
    fi
}
#greeting "superman"
# check_service "docker" 
# check_service "nginx" 
# check_service "redis"

# bash filename.sh function_name
# check if there is a function declared in the file 
if declare -f "$function_name" > /dev/null; then 
    "$@" # call function by its name 
else 
    echo "$function_name doesn't exist ❌"
fi  

# if declare -f "$1" > /dev/null; then 
#     "$@" # call function by its name 
# else 
#     echo "$1 doesn't exist ❌"
# fi  