# Rails PetShop Demo

* Main branch: master
* Ruby version: 2.3.1
* Rails version: 4.2.7
* PG version: ~> 0.15

## Which kind of features has this Demo??

- ActiveAdmin for administrative panels
- Twitter Bootstrap as default CSS Framework
- Pagination for Searches and index page
- Using FFaker to generate random data for Seeds
- Using Capybara to test the search feature
- Using PgSearch to implement full-text search of animals

## Installation / Getting Started

To install (development environment) on your machine, just follow the tips above:

    % git clone git@github.com:patrickemuller/rails-petshop-demo.git

It assumes you have a machine equipped with Ruby, Postgres, etc. If not, set up
your machine with [this script](https://github.com/COSMITdev/env-setup)
After setting up, you can run the application using:

    % bin/rails server

Now you just need to run the seed to populate the Database

    % bin/rake db:seed

## Running Specs

* **Create Test DB and run migrations**

```bin/rake db:create db:migrate RAILS_ENV=test```

* **Run Specs**

```bin/rspec```

## Creating feature branches

In all projects we work with `feature branches`. It's a good way to controll who are doing what and to improve quality of code, once you need to up a PR with that branch after.

### Create the branch

The nomenclature of the feature branch is composite by `{name initials}-{feature name || description}`, and probably will be something like that: `pm-review-typo` or `pm-create-users`.

Also, always keep you branch up-to-date with master, and keep master updated too. To do this, always run `git checkout master && git pull origin master`

Now, to create the feature branch just run `git checkout master && git checkout -b
[name-of-branch]`.

## Openning a Pull Request

After you finish the implementations what you did on your branch, you can up this to Github and open a Pull Request. This way other persons of the project can available your things and propose improvements. Just create the PR when you have confidence you create everything you need to like views, controllers, specs...
