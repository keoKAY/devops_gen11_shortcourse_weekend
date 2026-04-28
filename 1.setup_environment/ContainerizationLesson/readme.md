## NOTE 

```bash 
docker version 
docker run hello-world
docker container ls 
docker ps 
docker ps -a 

# List all the images that we have download or build on the local machine 
docker image ls
docker images 
docker network ls
docker volume ls
docker image rm image-name:tag-name # default value of tag is latest 
# image = nginx:alpine
docker run nginx:alpine 

# -d = deteched mode = run in the background 
docker run -d  nginx:alpine 
# EXPOSE your container by mapping (binding) the ports 
# <host-port>: <container-port>
docker run -d -p 3001:80 \
    --name nginx-cont nginx:alpine 

docker inspect image nginx:alpine 
# delete all stop containers
docker container prune 
```
## Using portainer 
> Using portainer image to run the web GUI for working with docker 

```bash 
docker volume create portainer_data
docker run -d -p 8000:8000 \
    -p 8005:9443 --name portainer \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data portainer/portainer-ce:sts
```



*** 
- Running test with postgresql 
```bash
docker run -dp 5432:5432 --name postgres \
    -e POSTGRES_USER=postgres \
    -e POSTGRES_PASSWORD=pass12345 \
    -e POSTGRES_DB=demo_db \
    postgres

# sometimes to you acccess your container 
docker exec -it container-name /bin/bash
```