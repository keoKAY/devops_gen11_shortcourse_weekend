## NOTE 

there are differnet type of the container registry 
- dockerhub 
- gitlab registry 
- github (ghcr.io)

- self-hosted 
    - nexusoss 
    - gohabor 
```bash 
docker images 
# download image from dockerhub 
docker pull nginx:alpine 

docker images | grep "nginx" 
docker login -u username -p password 
docker login -u lyvanna544 

#docker build -t lyvanna544/image-name 
docker tag source-image dockerhub-username/image:tag 
docker push dockerhub-username/image:tag 
```

- ## Using github container registry 
`ghcr.io`
- setting -> developer-setting -> classic token 
- token -> we scope  = `package(read,write)`
```bash 
docker login -u username -p token ghcr.io
docker login -u zoeistad ghcr.io
docker tag nginx:alpine \
    ghcr.io/zoeistad/nginx-demo:v1.0.0 
docker push ghcr.io/github-username/image-name:tag 

```

- ## Using gitlab container registry 
a. Configure project ( create a public repo)
- profile-> preferences -> access -> personal access token 
- SCOPES : 
     - read, write repositry 
     - read, write registry 
```bash 
docker login -u keoKAY \
    registry.gitlab.com
    
docker tag nginx:alpine \
    registry.gitlab.com/keokay/demo-gitlab-cr/nginx-demo:v1.0.0

docker push registry.gitlab.com/keokay/demo-gitlab-cr/nginx-demo:v1.0.0
```