# Penn Volunteer Bulletin

[![Build Status](https://travis-ci.org/pennlabs/Penn-Civic-Service.svg?branch=master)](https://travis-ci.org/pennlabs/Penn-Civic-Service)

A volunteer job board for Penn students by Penn Labs.

## Getting Started
- Install RVM (instructions can be found [here](https://rvm.io/rvm/install)).
- Install Bundler (`gem install bundler`)
- Install Rails (`gem install rails`)
- Clone the project with `git clone https://github.com/pennlabs/Penn-Civic-Service.git`
- Install all the project dependencies (`bundle install`)
- Migrate the database (`rake db:migrate`)
- Additionally, to configure email confirmation, install mailx
- Finally, run `rails s`
- After doing all the setup instructions and running `rails s`, navigate to localhost:3000

## DB Management
- If you ever need to reset your database, just do `rake db:drop`
- Make sure to migrate after each drop/change to the schema

## Config Options
- Run `rake routes` to see all the current routes

## Contributors
- Joseph Gao, Adam Domingoes, the development team at [Penn Labs](http://pennlabs.org/#team)
