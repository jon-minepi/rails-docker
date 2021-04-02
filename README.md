https://www.freecodecamp.org/news/painless-rails-development-environment-setup-with-docker/

# Docker Rails App

Ruby on rails development Environment.

## Docker
> install chromedriver

To download: 
- create an empty directory with your project name `$ mkdir <projectname>`

- `$ cd <projectname>`

- clone this directory to the current one`$ git clone <repo address> .`
- TEMP: `$ git checkout agile6`
- remove the .git directory  `$ rm -rf .git`


- copy .env.template to .env `$ cp .env.template .env`

> This doesnt do what I want it to, need to manually change env variables in 
> Dockerfile
 
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

To start a new project:

- run `rails new .`

- add rexml to Gemfile `$ echo "gem 'rexml'" >> Gemfile`

- Install bundles. run `bundle update && bundle install`

Starting the server:

- run `rails server -p $PORT -b 0.0.0.0`. Check your localhost:3000 to see if it's working.

Stopping the server:

- hit `ctrl-c` on your keyboard to stop the server.
