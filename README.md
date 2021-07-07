# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## build Schema 
- rails g scaffold Memory img:string details:string level:decimal

- rails db:migrate

## Vetted on postman

## Heroku deployed 
- https://memory-api-pasha.herokuapp.com/memory1s

## CORS
- uncomment cors on Gemfile 
- change example.com to "*" in cors.rb
