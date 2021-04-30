## docker config
https://stackoverflow.com/questions/65361083/docker-build-failed-to-fetch-oauth-token-for-openjdk

```
export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0
```

## docker commands
- docker build -t react-app .
- docker build -t react-appaustin2153/react-app



- docker exec -it CONTAINER_NAME sh #run shell in container

- docker start CONTAINER #starts a stopped container

- docker container prune #get rid of all stopped containers

- docker image tag 879afb330dc0 austin2153/react-app:1.0.0 #tag an existing image with a tag

## volumes
- docker volume create app-data
- docker volume inspect app-data

    ```
    This mount exists on the mobylinux VM running docker in WSL1

    [
        {
            "CreatedAt": "2021-04-30T00:08:02Z",
            "Driver": "local",
            "Labels": {},
            "Mountpoint": "/var/lib/docker/volumes/app-data/_data",
            "Name": "app-data",
            "Options": {},
            "Scope": "local"
        }
    ]
    ```

### docker run
- docker run -it react-app sh | *run shell inside interactive container session* | 
- docker run react-app ||
- docker run -d react-app *-d is detached mode* |
- docker run -d -p 4000:3000 -v app-data:/app/data react-app *map 4000 from localhost and mount - volume app-data to /app/data*
- docker run -d -p 5000:3000 -v app-data:/app/data react-app
- docker run -d -p 5000:3000 --mount source=app-data,target=/app/data react-app

```
--mount source=app-data,target=/app/data
- docker exec -it d8ff sh
```

### docker cp
- docker cp CONTAINER:FULLPATH LOCALDIRECTORY
- docker cp 6d128bc46daf:/app/log.txt .