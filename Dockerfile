# Define from what image we want to build from 
#node:10 image comes with node.js and NPM already installed
FROM node:10

# Create the application directory
WORKDIR usr/src/platform

# Install application dependencies
# A wildcard is used to ensure that both package.json AND package-lock.json are copied where available
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle the application source code inside the docker image
COPY . .

# Expose the port which the application is binded to 
EXPOSE 3000

# Define the command to run the application
CMD ["node", "server.js"]

# .dockerignore prevents local modules and debug logs from being copied onto the docker image and possibly overwriting modules installed within the image



