# Randomuser

This gem returns simple JSON/hash responses from the [Random User Generator](http://randomuser.me) API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'randomuser'
```

And then execute:

```bash
$ bundle
```

Or install it as a standalone gem with:

```bash
$ gem install randomuser
```

## Usage

To request a single random user:

```ruby
Randomuser.generate
```

To request multiple random users:

```ruby
Randomuser.generate(5)
```

To request a single female random user:

```ruby
Randomuser.generate_female
```

To request multiple female random users:

```ruby
Randomuser.generate_female(5)
```

To request a single male random user:

```ruby
Randomuser.generate_male
```

To request multiple male random users:

```ruby
Randomuser.generate_male(5)
```

To request a specific user:

```ruby
Randomuser.generate_seed('foobar')
```

For more information on this API, please see the [Random User Generator](http://randomuser.me) site.

## Tests

Testing works as usual:

```bash
git clone https://github.com/humanshell/randomuser.git
cd randomuser
bundle install
rake
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
