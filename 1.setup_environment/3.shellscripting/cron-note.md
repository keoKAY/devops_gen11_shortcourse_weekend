

```bash 

# inside the demo.sh 
#!/bin/bash 

echo "Current date is : $(date)" >> my-application.log

# Edit the cront configuratioon 

crontab -e 
# write this content 
* * * * * /home/vagrant/demo.sh 
# run demo.sh every minute 

crontab -l 
watch cat ~/my-application.log 

chmod a+x /home/vagrant/demo.sh
sudo systemctl status cron
sudo service cron status 
```