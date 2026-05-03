## NOTE for setting up jenkin on Google Cloud 


**I. Configuring Google Project**
1. Configure SSH 
2. Create a VM ( google instance )
3. Install Jenkins 
4. Create Firewall Rule 
5. Add domain and https for jenkins service 




5. Adding domain name and https for the jenkins 
```bash
server {
    listen 80;
    server_name jenkins-sc.anajak-khmer.site;

    location / {
        proxy_pass http://localhost:8080;

        # Preserve original host and client info
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;

        # Required for Jenkins (fix reverse proxy issues)
        proxy_set_header X-Forwarded-Port $server_port;

        # Disable buffering (important for console logs / streaming)
        proxy_buffering off;

        # Increase timeout for long builds
        proxy_read_timeout 3600;
        proxy_send_timeout 3600;

        # WebSocket support (VERY IMPORTANT)
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection "upgrade";

        # Prevent caching issues
        proxy_cache_bypass $http_upgrade;
    }
}
```


Check if the subdomain already point to IP 
```bash 
sudo apt update && sudo apt upgrade 
sudo apt install dnsutils -y

nslookup jenkins-sc.anajak-khmer.site

```

- Adding https for the jenkins service 
> Requirement: using certbot ( python tool for requesting adding ssl ) , letsencrypt

```bash 
sudo apt update
sudo apt install certbot python3-certbot-nginx
```