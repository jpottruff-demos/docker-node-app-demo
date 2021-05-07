## Commands Used

### Building Images

`docker build .`

`docker build -t <some name> .`

`docker image ls`

`docker image rm <image id>`

### Running Containers

`docker run <image name>`

- namessless containter

`docker run -d --name <container name> <image name>`

- named container, running in detached mode (eg. will not see console output)

`docker run -p 3000:3000 -d --name <container name> <image name>`

- same as above - specifies ports `<access port>:<container-port-its-mapped-to>`

`docker ps`

`docker rm <stopped container>`

`docker rm <container> -f`

### Shelling into Containers

`docker exec -it <container name> bash`
