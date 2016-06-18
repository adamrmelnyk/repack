# Repack

Gem for calculating markup on repacking various products and product types

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'repack'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install repack

## Usage

require the gem where needed and call the package method from the Repack module which takes the base price, number of works and the product category

```ruby
Repack.package(<base price>, <number of workers>, <category>)
```

### Sample Usage

```ruby
require 'repack'

Repack.package(1299.99, 3, "food")
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/repack. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
