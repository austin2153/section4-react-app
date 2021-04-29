## docker config
https://stackoverflow.com/questions/65361083/docker-build-failed-to-fetch-oauth-token-for-openjdk

```
export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0
```

## docker commands
- docker build -t react-app .
- docker build -t react-appaustin2153/react-app

- docker run -it react-app sh #run shell inside interactive container session 
- docker run react-app
- docker run -d react-app #-d is detached mode

- docker image tag 879afb330dc0 austin2153/react-app:1.0.0 #tag an existing image with a tag

