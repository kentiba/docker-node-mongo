FROM node:10
#make new directory in the container
WORKDIR /user/src/app
#copy all package files
COPY package*.json ./
#install all dependencies
RUN npm install
#copy all files from here to the container
COPY . .
#3000 is the port node is running on
EXPOSE 3000
#cmd to start the app
CMD [ "npm", "start" ]