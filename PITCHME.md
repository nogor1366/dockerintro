# Docker intro
---
## Lesson 1) Docker, Images, Containers

*Application* - executes in an environment with OS and software dependencies

*Image* - an executable package with everything you need to run your app

*Container* - a runtime instance of an image

*Docker* - platform to develop/depoly and run apps with containers

*Dockerfile* - defines the image

lets run a base linux image:

`docker run --name test -it debian`
---
## Lesson 2) - I can run my application inside an image

First create index.js: 

`echo 'console.log("hello docker")' > index.js`

now lets run inside the base node 8.x image:

`docker run -it --rm --name myNodeContainer -v "$PWD":/myapp -w /myapp node:8 node index.js`
---
## Lesson 3) - build a simple image

create a dockerfile (see below)

`docker build -t mynodeimage .`

`docker run mynodeimage`
---

## Stretch goals
- modify the base-ci image
- build your own image
- push to 
---
## References:
Docker get started https://docs.docker.com/get-started

Dockerfile https://docs.docker.com/engine/reference/builder/

Compozed docs 

my docker image cheat-sheet
---
## Sample dockerfile
```
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
```
