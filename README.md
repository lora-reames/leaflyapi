# Leaflyapi

[![build status](https://secure.travis-ci.org/patrickr/leaflyapi.png)](http://travis-ci.org/patrickr/leaflyapi) [![Coverage Status](https://coveralls.io/repos/patrickr/leaflyapi/badge.png?branch=master)](https://coveralls.io/r/patrickr/leaflyapi?branch=master) [![Gem Version](https://badge.fury.io/rb/leaflyapi.png)](http://badge.fury.io/rb/leaflyapi)

A simple ruby gem to help you enteract with the [leafly.com](http://www.leafly.com/) API.

Currently it lets you retrieve strains and read their attributes but it may do more eventually.

## Installation

Add this line to your application's Gemfile:

    gem 'leaflyapi'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install leaflyapi

## Usage
```ruby
require 'leaflyapi'

# lets get ALL of the strains
strains = Leaflyapi::Strains.all

# now we have an array full of strain objects
strains.class => Array

# it respondes to all of Array's methods so we can iterate over it and do whatever we like
strains.each { |strain| p strain.name } # would print out all the strain names
strains.each do |strain| # so would this
  p strain.name
end

# and we can read their attributes easily
strains.first.name # returns the name of the first strain.
strains.first.description # returns the description of the first strain.

```

## Contributing

1. Fork it ( https://github.com/patrickr/leaflyapi/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
