  
# Basing our Image ontop of NodeJS version 10
FROM node:10

# Set the Working Directory to the Node main directory
WORKDIR /usr/srv/app

# Copy the app dependencies and installing them
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./
RUN npm install

# Copy all the app files to the working directory in the container
COPY ./client/build .

# Copy the Node-Express server to the working directory in the container
COPY server.js .

# Exposes a communication port for the container
EXPOSE 8080

# Run the Server Command
CMD ["node", "server.js"]