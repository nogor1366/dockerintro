#specify the base image
FROM node:8

#set working directory
WORKDIR /myapp

#copy directory contents
ADD . /myapp

#application default port
EXPOSE 3000

#set an environment variable
ENV NAME DockerWorld

#run node when container launches
CMD ["node" , "index.js"]
