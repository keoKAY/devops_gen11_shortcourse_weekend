## Related to Docker network 


```bash 
docker run --network host spring-fileupload


sudo apt update 
sudo apt install dnsutils 
sudo apt install net-tools 

ip addr show 
ifconfig 

nslookup domain # to show the ip address corespond to the ip 
```
# Lab Testing 
```bash 
# Create first user-defined bridge network 

docker network create -d bridge demo-network 

# run container that runs inside this network 
docker run -it --rm --name container1 \
    --network=demo-network \
    busybox:latest 

docker run -it --rm --name container2 \
    busybox:latest

# test from container1 
ping container2 # should not work 
nslookup container2 


# on Container2 , exit 
docker run -it --rm \
    --network=demo-network \
    --name container2 \
    busybox:latest
```
