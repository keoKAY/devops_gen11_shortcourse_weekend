#!/bin/bash

# this file is the file that call utils.sh to use 
if [ -f ./utils.sh ]; then
    echo " 🟢 Sourcing the file into the main file " 
    source ./utils.sh 
else 
    echo "utils.sh doesn't exist ❌" 
    exit 1 
fi 

# calling function located inside utils.sh file 
greeting james
check_service nginx 
check_service docker 