## Note for package manager 

```bash 
apt 

sudo apt update 
sudo apt upgrade -y 

sudo apt install nginx tree neofetch -y 

# jq, yq 
sudo apt install jq -y 
sudo snap install yq -y 
sudo apt install gh -y # gitlab , glab 


```

* fixing the lock file issue when apt upgrade 
```bash
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/lib/dpkg/lock #(if present)
sudo rm /var/cache/apt/archives/lock # (if present)
#Afterward, update your package lists and force a reconfiguration:
sudo apt update
sudo dpkg --configure -a

sudo apt install nginx -y 
sudo systemctl status nginx # check the status of nginx 

# remove the package 
sudo apt remove nginx -y 
sudo apt purge  nginx -y 
# remove the associate module or package after nginx remove 
auto apt autoremove 

curl localhost:80 
```