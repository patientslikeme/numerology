# Numerology

Format numbers with examples rather than complex codes. This can make your code more readable as well as open up opporunities for your users to specify their preferred output formats.

## Installation

Add this line to your application's Gemfile:

    gem 'numerology'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install numerology

## Usage

Adds the format_like method to Numeric. Pass a string example of the format you are looking and numerology will attempt to format the number similarly.

### Features
Currently the gem supports the following formatting options. Patches to add other formatting features are welcomed.

* Thousands separators.
* Significant digits
* Leading 0's

### Examples

```ruby
num = 123456
num.format_like('1,111') >>> "123,456"
num.format_like('1.111') >>> "123.456"
num.format_like('1 111') >>> "123 456"
num.format_like('1,100') >>> "123,500"

1234.format_like('001,111') >>> "001,234"
12345.format_like('001,111') >>> "012,345"
```
If you are familiar with the syntax used by the stamp gem, which inspired this one, you can also use the following aliases for format_like:

* `stamp`
* `stamp_like`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Implement your new features, with tests and update the documentation
4. Commit your changes (`git commit -am 'Added some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
