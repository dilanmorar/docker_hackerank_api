# Hackerank basic API Example

This project is to show a basic implementation of webscraping and generating JSON api data from live sources. We are going to build a docker image using the dockerfile and then run the container.

## Docker

Docker is a tool designed to make it easier to create, deploy, and run applications by using containers. Containers allow a developer to package up an application with all of the parts it needs, such as libraries and other dependencies, and deploy it as one package.

## How to run API

`docker build . -t hack_py`

`docker run -d --name hack_py -p 5000:5000 hack_py`

Go to localhost:5000/hackerank-top-10
