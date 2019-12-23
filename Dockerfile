FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)



# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY https://github.com/kumawat8560/Node2-app/ .
RUN npm install

EXPOSE 8080
CMD [ "node", "server.js" ]
