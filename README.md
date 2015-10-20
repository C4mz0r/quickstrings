# Quickstrings

Welcome to Quickstrings - a friendly little gem to help you generate useful strings on the fly when you're seeding your database with test data, or trying some experiements in IRB, etc.  Quickstrings will help you generate the data you need with some simple function calls.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'quickstrings'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install quickstrings

## Usage

Be sure to first require it in your code or IRB:

```ruby
require 'quickstrings'
``` 
Then you can quickly generate the different types of strings you may need:

Examples:
```ruby
Quickstrings.email
Quickstrings.rstring(10)

# but if you don't like typing Quickstrings namespace out each time, you can shorten it
# e.g. QS=Quickstrings
QS.email
QS.rstring(10)

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/C4mz0r/quickstrings.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

