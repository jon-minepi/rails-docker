https://www.freecodecamp.org/news/painless-rails-development-environment-setup-with-docker/

# Docker Rails App

Ruby on rails development Environment.

## Docker

To download: 
- create an empty directory with your project name `$ mkdir <projectname>`

- `$ cd <projectname>`

- clone this directory to the current one`$ git clone <repo address> .`
- TEMP: `$ git checkout agile6`
- remove the .git directory  `$ rm -rf .git`


- copy .env.template to .env `$ cp .env.template .env`

- edit the .env `$ vi .env`
 
To build:

- run `docker-compose build`

To run:

- run `docker-compose run --rm --service-ports ruby_dev`

To run in multiple terminal windows:

- run `docker exec -it YOUR_CONTAINER_ID /bin/bash`

To exit bash or your container:

- run `exit`

To cleanup:

- run `docker-compose down`
- run `docker rmi rails-docker_ruby_dev`

## Rails

Once you've got a terminal into the container

Starting the server:

- run `rails server -p $PORT -b 0.0.0.0`. Check your localhost:3000 to see if it's working.

Stopping the server:

- hit `ctrl-c` on your keyboard to stop the server.
