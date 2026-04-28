#!/bin/bash 
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