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



# cat -> read the file from specific directory 
cat /etc/passwd
pwd

# create a folder 
mkdir folder-name
cd folder-name 
touch filename.txt 
# remove files or folder 
sudo rm -rf filename, folder-name 
rmdir folder-name 



cp source dest 
# source has inner folder or files 
cp -r source dest 
mv source dest 
# rename file from oldfile.txt -> newfile.txt 
mv oldfile.txt newfile.txt

# used to create a nested folder 
mkdir -p outer/inner
tldr mkdir 
curl wttr.in
curl wttr.in/Paris

# checking memory 
free -h 
# checking disk 
df -h 
htop 
ps aux 
ps aux | grep nginx 


# systemd related command ( service )
sudo systemctl status nginx
sudo systemctl restart nginx 
sudo systemctl reload nginx 
sudo systemctl daemon-reload
sudo systemctl stop nginx 

```


- Working with text editor 
Nano 
```bash 
nano filename
# you write the content to the file 

Ctrl + O # to save your file 
Ctrl + X # to exit from nano 
```

VIM 
```bash 
vim secondfile
```
- i = insert 
- esc = exit to normal mode 
- :w = write 
- :q = quit 
- :wq = write & quit 