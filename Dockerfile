# Add the docker hub image (this could come from docker hub or a private repo)
FROM node:15

# Working Directory in the container 
# default location where commands are run, things are copied to, etc.
WORKDIR /app

# Copies the `package.json` from THIS directory to the WORKDIR (eg `.`) in the container
# Same as: COPY package.json /app
COPY package.json .

# Installs dependecies
RUN npm install

# Copies all the current directory files to the WORKDIR
# NOTE: why are we copying the package.json again? why are we not doing this before the npm install
# optimization technique; docker caches the result of each layer (eg. each previous step/command)
# if you decide to rebuild the image, docker can tell if nothing has changed; if nothing changes, gives you the final cached result of that last step 
COPY . ./

# This will allow us to set the env port
ENV PORT 3000

# Exposed port on the container
# IMPORTANT - this does **NOTHING**; its more for documentation purposes
# you must put it in your run command (eg. -p 3000:3000)
EXPOSE $PORT

# Starts the app (dev via nodemon)
CMD ["npm", "run", "dev"]