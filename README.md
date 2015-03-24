# Macblame

A better git blame to use in your Terminal.app This tool is used along with git to get a better version of "git blame ".. It will give you the percentage of contribution by individual users, so that it will be easier for you to blame the right person.. ;) This idea was conceived by Vignesh Jeyavel of Freshdesk and it's a cool idea!

## Installation

install it yourself as:

    $ gem install macblame

## Usage

	$ macblame <filename 1> <filename 2> ....

all the files given as params should be tracked by git.

## Sample output:
```
$ for file Marauders.map..
$ Contributor: mooney with 25 % contribution with 50 lines of code
$ Contributor: padfoot with 25 % contribution with 50 lines of code
$ Contributor: wormtail with 25 % contribution with 50 lines of code
$ Contributor: prongs with 25 % contribution with 50 lines of code
* * * * * * * * * * * * * * * * * * * * * * * * *
```
## Contributing

1. Fork it ( https://github.com/praserocking/macblame-gem/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
