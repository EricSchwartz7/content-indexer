# Content Indexer API

#### Usage as an external API

* Send a 'GET' request to "content-indexer.herokuapp.com/api/v1/websites" to receive a list of all websites stored in the database along with their headers and links.

* Send a 'POST' request to "content-indexer.herokuapp.com/api/v1/websites" with the parameter being an object with a key of "url" pointing to a string of the url that you'd like to index. i.e. `{url: "https://github.com"}`

#### If cloning for local use

* Run `bundle` to install dependencies.

* `rake db:migrate` to run the Postgres database migrations.

* `rails test` will run the test suite.

* This API was developed in Ruby 2.3.1.
