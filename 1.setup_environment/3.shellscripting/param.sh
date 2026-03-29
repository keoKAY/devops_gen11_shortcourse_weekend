#!/bin/bash 

subdomain="${1:-default}"
service_name="${2:-default-svc}" 
service_port="${3:-3000}"  

if [ -z "$subdomain" ]; then 
    echo " ⚠️ You must specify the domain name "
    exit 1 
fi 

echo "---------------[RESULT]-------------"
echo " 👍 Script filename is : $0"
echo " 🚀 Adding ${subdomain}.istad.dev for $service_name" 
echo " ✅ Service running on port:$service_port" 


# bash param.sh reactjs-frontend reactjs-svc 3000