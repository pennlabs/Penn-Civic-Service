[![Build Status](https://travis-ci.org/pennlabs/Penn-Civic-Service.svg?branch=master)](https://travis-ci.org/pennlabs/Penn-Civic-Service)

# Penn Volunteer Bulletin

A volunteer job board for Penn students by Penn Labs.

## Setting Up
- install RVM (instructions can be found [here.](https://rvm.io/rvm/install))
- install bundler (`gem install bundler`)
- install rails (`gem install rails`)
- clone the project with `git clone https://github.com/pennlabs/Penn-Civic-Service.git`
- install all the project dependencies (`bundle install`)
- migrate the database (`rake db:migrate`)
- additionally to configure email confirmation, install mailx
- finally, run `rails s`
- after doing all the setup instructions and running rails s, navigate to localhost:3000

## DB Management
- if you ever need to reset your database, just do `rake db:drop`
- make sure to migrate after each drop/change to the schema

## Config Options
- run `rake routes` to see all the current routes

## Contributors
- Joseph Gao, Adam Domingoes, the development team at [Penn Labs](http://pennlabs.org/#team)
