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

<hr />

`docker run -p 3000:3000 -d --name <container name> <image name>`

- same as above - specifies ports `-p <access port>:<container-port-its-mapped-to>`

`docker run -v C:\Users\Me\docker\node-docker\:/app -p 3000:3000 -d --name <container name> <image name>`

- same as above - specifies bind mount `-v <pathToLocalFolder>:<pathToContainerFolder>`

  NOTE: could also substitute the long local path with a variable (provided you are running the command from the localhost folder you want to map):

  - **cmd:** `%cd%`
  - **powershell:** `${pwd}`
  - **bash:** `$(pwd)`

  Sometimes `git bash for Windows` causes problems

<hr />

`docker ps`

`docker rm <stopped container>`

`docker rm <container> -f`

### Shelling into Containers

`docker exec -it <container name> bash`
