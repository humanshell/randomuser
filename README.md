# Randomuser

This gem returns simple JSON/hash responses from the [Random User Generator](http://randomuser.me) API.

## Installation

Add this line to your application's Gemfile:

    gem 'randomuser'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install randomuser

## Usage

To request a single random user:

```
Randomuser.generate
```

To request multiple random users:

```
Randomuser.generate('results=5')
```

To request a specific gender:

```
Randomuser.generate('gender=female')
```

To request a specific gender with multiple results:

```
Randomuser.generate('results=5&gender=female')
```

To request a specific user:

```
Randomuser.generate('seed=smallPanda')
```

For more information on how to customize requests, please see the [Random User Generator](http://randomuser.me) site.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
