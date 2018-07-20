# Textile2md

Convert textile to markdown

## Installation

### gem

```
$ gem install textile2md
```

### Gemfile

Add this line to your application's Gemfile:

```ruby
gem 'textile2md'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install textile2md

## Usage

### Command


#### Read local file

```
$ textile2md some_textile_file.txt
```

#### Read from web file

```
$ textile2md https://examle.com/some_textile.txt
```

```
$ textile2md https://raw.githubusercontent.com/YumaInaura/textile2md/master/spec/fixtures/textile.txt
```

### Ruby script

#### Code

```
textile = <<-EOM
h1. header1

* list
* list
* list

h2. header2
EOM

puts Textile2md.convert(textile)
```

#### Outputs

```md
# header1

- list
- list
- list

## header2
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Yumainaura/textile2md. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Textile2md project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/YumaInaura/textile2md/blob/master/CODE_OF_CONDUCT.md).
