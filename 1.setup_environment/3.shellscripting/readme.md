## NOTE FOR SHELLSCRIPT

`Shellscript` : is a file contains series of commands in order to perform specific tasks 



```bash 
history -c 
echo "" > bash_history 
echo "" > zsh_history
tldr history 


cut -d " " -f 2 sample-cut.txt
# replace "," -> "$"
cut -d " " -f 2 sample-cut.txt | tr "," "$"
# remove "," 
cut -d " " -f 2 sample-cut.txt | tr -d  ","



# to read the log between specific line number 
tldr awk 
# Read log from line 17 - 20 
awk 'NR>=17 && NR<=20 {print $0}' /etc/passwd
# if you want also print the line number 
awk 'NR>=17 && NR<=20 {print NR, $0}' /etc/passwd

head /etc/passwd 
tail /etc/passwd 
tail -5 /etc/passwd # show the last 5 line 

# display from line 17th-20th 
head -20 /etc/passwd | tail -4
sed -n '17,20p' /etc/passwd 



ps aux  # list process 
ps aux | grep "servicename" 

grep "error" application.log 
grep -i "error" application.log  #ignore case 
grep -o "error" application.log # only match 
# Regex = Regular Expression 
grep -E  "^port: " application.log 
grep -E "p.*t" application.log
grep -E "p..t" application.log

cd /var/log/nginx
``` 