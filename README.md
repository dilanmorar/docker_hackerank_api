# Hackerank basic API Example

This project is to show a basic implementation of webscraping and generating JSON api data from live sources. We are going to build a docker image using the dockerfile and then run the container.

## Docker

Docker is a tool designed to make it easier to create, deploy, and run applications by using containers. Containers allow a developer to package up an application with all of the parts it needs, such as libraries and other dependencies, and deploy it as one package.

## Dockerfile

A dockerfile is a script with various commands and arguements listed successively to automatically perform actions on a base image (in this case ubuntu 20.04) to create a new one. In this case we use ubuntu 20.04 as our base image, then copy our app code onto the image, then install python and pip (which allows us to install the dependencies required to run the app) and then finally run the app.

## How to run API using dockerfile

Need to make sure you are in the project directory

To build the image:
`docker build . -t <image_name>`

To run the container:
`docker run -d --name <image_name> -p 5000:5000 <container_name>`

Go to localhost:5000/hackerank-top-10

## Docker Hub

Docker Hub is a cloud-based repository in which you can create, test, store and distribute container images. We can use this to create our own repository for this Hackerank API.

### Using Docker Hub

The first thing you need to do is to create a Docker Hub account, and then create a repository and give it a name.

Once the container is running (the 'How to run API') you can push the image to the repository you created.

Then need to commit the project:
`docker commit -m 'commit message' <image_name> <username/repository_name>`

Push the project to Docker Hub:
`docker push <username/repository_name>`

My repository on Docker Hub: https://hub.docker.com/repository/docker/dilanmorar/hack_api

## Using docker compose

Docker compose allows you to run multi-container docker applications, such as an app and a database, but in this case it is only the one application. You can create and start all the services with a single command `docker-compose up`
