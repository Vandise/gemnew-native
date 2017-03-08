# Gemnew Native

Creates a template for creating your own native C ruby gems. Heavily influenced by Brian Hogan's `rubynew`, which can be found [Here](https://github.com/napcs/rubynew)

## Installation

Clone this repository with:
```
git clone https://github.com/Vandise/gemnew-native && cd gemnew-native
```

Install dependencies:
```
bundle install
```

Build the gem:
```
rake build
```

Install the gem globally (version will vary):
```
gem install pkg/gemnew_native-1.0.gem
```

## Usage

Run the `gemnew_native` command and pass it the name of the project you want to create.

```
$ gemnew_native nativegem
```

## Contributing

## Changelog

### Version 0.0.1

* Initial release

## License

See LICENSE