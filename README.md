# Swagger Editor Docker image

[Swagger Editor](http://editor.swagger.io/) lets you edit Swagger API specifications in YAML inside your browser and preview documentation in real time.

### Contents

 - Usage
	 - Start a container with Docker
	 - Start a container with Docker Compose
 - Build
	 - Build with Docker
	 - Build with Docker Compose
 - About

## Usage

In the instructions that follow, replace `<http-port>` with the HTTP port you want Swagger Editor to be serve from to (e.g. `80` for the standard HTTP port if not already in use on the host).

### Start a container with Docker

	$ sudo docker run --rm -p <http-port>:8080 sebp/swagger-editor

### Start a container with Docker Compose

Add the following lines in an existing or a new `docker-compose.yml` file:

	swaggereditor:
	  image: sebp/swagger-editor
	  ports:
	    - "<http-port>:8080"

Then start a Swagger Editor container with:

	$ sudo docker-compose up swaggereditor


## Build

First clone or download the [spujadas/swagger-editor-docker](https://github.com/spujadas/swagger-editor-docker) GitHub repository, open a shell in the newly created `swagger-editor-docker` directory, then build the image and run a container using Docker or Docker Compose, as explained below.

### Build with Docker

This command will build the image:

	$ sudo docker build .

### Build with Docker Compose

Build the image with this command:

	$ sudo docker-compose build

## About

Written by [Sébastien Pujadas](http://pujadas.net), released under the [Apache 2 license](http://www.apache.org/licenses/LICENSE-2.0).
