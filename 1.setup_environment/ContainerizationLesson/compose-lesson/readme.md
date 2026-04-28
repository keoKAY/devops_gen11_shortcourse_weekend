## NOTE for docker compose 


```bash 
# go to the location where docker compose file located

# to check the full syntax for your compose file 
docker compose config 

# list all the services name inside the compose file 
docker compose config --services 

# up all services inside the compose file 
docker compose up -d 
# down all the service 
docker compose down 
# delete the volume after remove the contaiers 
docker compose down -v 


# to up and down specific service 
docker compose config --services 
docker compose up service-name -d 
docker compose down service-name 
```