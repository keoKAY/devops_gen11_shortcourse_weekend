


```bash 

# filename: test.sh 

chmod 777 
# rember the three number for read,write,run (execute )
# 4(read) ,2(write) 1(run) 
chmod u=rwx,g=rw,o=rw 
#- symbolic mode 
#- numberic mode 

sudo chmod 700 testing.sh



# - symbolic mode
chmod all=rwx testing.sh
chmod u=7,g=7,o=r testing.sh


# change ownershiop 
chown superman:superman folder-name| filename
chown 
```

Recap 
- Basic command 
- User management ( basic )
- Group 
- Packages 


*** 
### Workign with link in linux 
```bash 

nano source.txt 
Ctrl+o + enter 
Ctrl+x + enter 

ln -s source-path destination-path
# use absolute path
ln -s  ~/link_demo/source.txt ~/link_demo/config 

tldr rsync 


```
- Adding user to sudoer group , and assign privileges 
```bash 
sudo usermod -aG sudo superman

sudo visudo 
# write this expression 
superman ALL=(ALL:ALL) ALL # regular root privilege 
# customization to run all the command without needing password 
superman ALL=(ALL:ALL) NOPASSWD:ALL 

# running specific binary 
superman ALL=(ALL:ALL) NOPASSWORD:/bin/cp

# to open with the vim editor 
sudo EDITOR=vim visudo 

# create a file inside the /etc/sudoers.d 
sudo nano /etc/sudoers.d/batman
# write this expression 
batman ALL=(ALL:ALL) NOPASSWD:ALL
```


*** 
1. PASSWD (Forced Password Prompt) 
This is the opposite of NOPASSWD. It forces a user to enter their password for specific commands, even if they have broad NOPASSWD rights elsewhere. 
Usage: `username ALL=(root) PASSWD: /usr/bin/apt-get`
Purpose: Ensures sensitive commands always require authentication. 

2. Specific Command Restriction 
Instead of allowing ALL commands, you can restrict users to running only specific binaries with sudo. 
Usage: `username ALL=(root) /usr/bin/systemctl restart nginx, /usr/bin/tail`
Purpose: Adheres to the principle of least privilege, reducing security risks. 

3. Run As Specific User 
You can allow a user to run commands as a specific, non-root user (e.g., www-data or backup). 
Usage: `username ALL=(www-data) NOPASSWD: /var/www/script.sh`
Purpose: Restricts the security context of the commanded task. 


4. Defaults Entries (Security Policies) 
These are generally placed at the top of the file to change global behavior.
`Defaults timestamp_timeout=0`: Disables the sudo password cache. A password is required for every single sudo command.
`Defaults logfile="/var/log/sudo.log"`: Customizes where sudo activity is logged.
`Defaults pwfeedback`: Provides visual feedback (asterisks) when typing a password. 
5. Group-Based Access 
Instead of individual users, you can use groups. 
Usage: `%groupname ALL=(ALL) ALL`
Purpose: Easier management of permissions for multiple users (e.g., the wheel or sudo group). 


*** 
### Extra Lab (related to user )

```bash 
sudo useradd -m -s /bin/bash james
# create the default password for first login 
echo "james:hello123" | sudo chpasswd 
# force user to change their password after login 
sudo chage -d 0 james
```