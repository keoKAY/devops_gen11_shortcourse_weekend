## 1. Requirements 

Goal: create ubuntu instance for testing the linux server 
a. Vagrant 
b. Virtualbox 



1. Create your first VM with vagrant 
```bash 
vagrant init ubuntu/jammy64
# update the configuration 
vagrant up 
vagrant status # Check the status of your instances 
vagrant halt # to turn off your vm 
vagrant destroy -f # to delete your vm 
vagrant ssh # to remote to your vagrant instance 
```