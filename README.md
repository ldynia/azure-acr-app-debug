# Description

This is a debug application intended to be push to Azure Container Registry and deployed on Azure App Service.

# Instructions

This application checks if we are able to ssh into a container using `SSH` blade in app service.

Links:
- [acr](https://docs.microsoft.com/en-us/azure/container-registry/container-registry-get-started-docker-cli)
- [ssh](https://docs.microsoft.com/en-us/azure/app-service/configure-custom-container?pivots=container-linux)

```bash
$ az login
$ az acr login --name ldynia

$ docker build -t debug-app .
$ docker tag debug-app:latest ldynia.azurecr.io/debug-app:latest
$ docker push ldynia.azurecr.io/debug-app

$ docker run -d debug-app
$ docker inspect debug-app

# Password Docker!
$ ssh root@DEBUG-APP-IP -p 2222
```