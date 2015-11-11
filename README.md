# yao-oj

Yao's http response parser using oj. This is a client generator plugin. [![Build Status](https://travis-ci.org/yaocloud/yao-oj.svg?branch=v0.2.0)](https://travis-ci.org/yaocloud/yao-oj)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yao-oj', '>= 0.2'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yao-oj


Note: `yao-oj` depends on `yao` itself.

## Usage

```ruby
require 'yao'
require 'yao-oj'

Yao.config.set :client_generator, :oj
```

And it rocks!

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/yao-oj. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

