# README

This project is done following an API builder blog from web-crunch.com https://web-crunch.com/posts/create-a-basic-api-with-ruby-on-rails

* Ruby 2.7.0
* Rails 7.0.4.2

This is a back-end API that has the ability to talk to any application. The API contains resources for Pokemon and Trainers. The current relationship is built so that a trainer can have many pokemon, and so that a pokemon belongs to a trainer.

In order to run this on your local
* Clone
* Run command bundle install to install the ruby gems
* Run command rails s to run the rails server
* Open localhost:3000/api/v1/trainers
