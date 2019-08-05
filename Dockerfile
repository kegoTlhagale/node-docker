FROM node:10  
# The docker image we want to build from

WORKDIR /server
# create a directory to hold the code application to hold the application code inside the image

COPY package*.json ./
# copy project files in to the directory created above

RUN npm install

COPY . .
# bundle the sorce code of the application in the docker image

EXPOSE 3000
# exposes the port that the application is binded to


CMD ["node", "server.js"]
# command to run node server


