# Rails Articles Model Lab

Welcome to the Articles Model Practice Lab! This is a Rails 8.0.2.1 app using Ruby 3.4.5.

## Setup Instructions

1. **Install dependencies:**
	```sh
	bundle install
	```
2. **Run the server:**
	```sh
	bin/rails server
	```
	Visit [http://localhost:3000](http://localhost:3000) in your browser.
3. **Run the test suite:**
	```sh
	bundle exec rspec
	```

## Your Task

- Generate a model called `Article` with attributes `title:string` and `body:text`.
- Run migrations.
- Use the Rails console to create at least one article.
- Add a validation for presence of title in the model.

## Example Steps

1. Generate the model:
	```sh
	bin/rails generate model Article title:string body:text
	bin/rails db:migrate
	```
2. Add validation in `app/models/article.rb`:
	```ruby
	validates :title, presence: true
	```
3. Use the Rails console:
	```sh
	bin/rails console
	```
	```ruby
	Article.create(title: "Test", body: "Body text")
	Article.create(body: "No title") # Should be invalid
	```

## RSpec Test

Tests are provided to check that an article with a title and body is valid, and an article without a title is invalid.

---

Happy coding!
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
