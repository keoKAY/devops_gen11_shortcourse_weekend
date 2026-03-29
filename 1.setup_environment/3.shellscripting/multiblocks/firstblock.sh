#!/bin/bash
echo " 
This is the first line 
Second line 
Third line 
Aplication running on port:8080
" | tee -a note.txt 


tee note2.txt > /dev/null << EOF
server: 
    port: 8080  
config: 
    name: app-cfg
EOF