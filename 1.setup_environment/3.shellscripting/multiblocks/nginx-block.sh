#!/bin/bash 

service_name="$1" 
service_port="$2" 
subdomain="$3"


echo "Setting up config for $service_name" 
cat << EOF > reverse-proxy.conf 
server {
    listen 80;
    server_name $subdomain.istad.dev;
    location / {
        proxy_pass http://localhost:${service_port};
        include proxy_params; # Includes recommended header forwarding
         # Forward the upgrade headers
        proxy_set_header Upgrade \$http_upgrade;
        proxy_set_header Connection "upgrade";
        
        # Optional: Forward client information and adjust timeouts
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_read_timeout 86400s; # Set a high timeout for long-lived connections
        proxy_buffering off; # Disable buffering for real-time communication
    }
}

EOF