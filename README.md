# Quickstrings

Welcome to Quickstrings - a friendly little gem to help you generate useful strings on the fly when you're seeding your database with test data, or trying some experiements in IRB, etc.  Quickstrings will help you generate the data you need with some simple function calls.

I've found that a lot of times when I'm making some seed data or messing about in IRB testing out some calls, I am typing in certain data, such as emails, urls, or maybe I need to specify an image.  I've wasted countless keystrokes!  So I've created this little gem to help simplify things, and I hope that it can help you out too!

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

This gem is fairly self-contained and doesn't have any dependencies.

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

QS=Quickstrings
QS.whitelist_string(whitelist, 10) # => Whitelist can be a 1-d array, range, fixnum, or string - and only those chars will be used in generating the string of specified length
QS.rstring # => Random a-z char
QS.rstring(10) # => Random a-z string of specified length
QS.rstring(10,'Q') # => Random a-z string of specified length, first and last letters are as specified.  Useful when visually inspecting for string truncation, etc.
QS.rutf8string # => Random UTF-8 char (U+00C0 to U+00FF inclusive, except for U+00D7 and U+00F7)
QS.rutf8string(5) # => Random UTF-8 string of specified length
QS.email # => somebody@example.com
QS.remail # => Random email from a set
QS.url # => http://www.google.com
QS.rurl # => Random url from a set
QS.name # => Frank
QS.rname # => Random name from a set
QS.flname # => Frank Enstein (first and last name)
QS.rflname # => Random first and last name from a set
QS.image # => Link to the default gravatar 20x20 image
QS.image(500) # => Link to the default gravatar image with specified size (in this case 500x500 pixels)
QS.rimage # => Link to random gravatar image from a set
QS.rimage(500) # => Link to random gravatar image from a set with specified size
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/C4mz0r/quickstrings.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

