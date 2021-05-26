## Commands Used

Most of these have been tracked in the `package.json`

### Images

_See `image:*` commands_

- `docker build -t <image name> .`
- `docker image ls`
- `docker image rm <image id>`

### Containers

_See `container:*` commands_

- `docker run <image name>` _(namelesss container)_
- `docker run -d --name <container name> <image name>` _(named container; running in **detached mode**)_
- `docker run -p <external port>:<container port> -d --name <container name> <image name>` _(specifies ports)_
- `docker run -v <pathToLocalFolder>:<pathToContainerFolder> -p <external port>:<container port> -d --name <container name> <image name>` _(specifies bind mount; see Note below)_
- `docker run -v <pathToLocalFolder>:<pathToContainerFolder> -v <pathToMoreSpecifcContainerFolder> -p <external port>:<container port> -d --name <container name> <image name>` _(specifies bind mount; adds an **anonymous volume**; see note below)_
- `docker run -v <pathToLocalFolder>:<pathToContainerFolder>:ro -v <pathToMoreSpecifcContainerFolder> -p <external port>:<container port> -d --name <container name> <image name>` _(makes the bind mount **read only** on /app)_

  NOTE: could also substitute the long local path with a variable (provided you are running the command from the localhost folder you want to map):

  - **cmd:** `%cd%`
  - **powershell:** `${pwd}`
  - **bash:** `$(pwd)`

  Sometimes `git bash for Windows` causes problems here

  NOTE: docker maps volumns based on **specificity** - the longer path in this case is more specific, so it will not be overwritten when following the process outlined in the `Dockerfile` _(eg. the copy step)_ as it overrides the bind mount

- `docker ps` _(lists running containers)_
- `docker ps -a` _(lists stopped and running containers)_
- `docker rm <stopped container>` _(removes stopped container)_
- `docker rm <container> -f` _(removes running or stopped container)_

### General Commands

- `docker exec -it <container name> bash` _(shells into container)_

  NOTE: can replace with a different shell as needed (eg. mongo, etc.)
