## Commands Used

`docker image ls`
`docker image rm <image id>`

`docker build .`  
`docker build -t <some name> .`

`docker run <image name>` // namessless containter
`docker run -d --name <container name> <image name>` // named container, running in detached mode (eg. will not see console output)
`docker run -p 3000:3000 -d --name <container name> <image name>` // same as above - specifies `<access port>:<container-port-its-mapped-to>`

`docker ps`
`docker rm <stopped container>`
`docker rm <container> -f`

`docker exec -it <container name> bash`
