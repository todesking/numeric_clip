# NumericClip

This gem provide `Numeric#clip(lower, upper)` method.

```ruby
3.clip(1, 9) # => 3
3.clip(1, 2) # => 2
3.clip(0, 1) # => 1
```

## Installation

Add this line to your application's Gemfile:

    gem 'numeric_clip'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install numeric_clip

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Changes

### 0.0.1(unreleased)
* initial
