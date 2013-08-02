# Wolfram Alpha Parser

This gem parses Wolfram Alpha for solutions in text. The responses are very raw as of right now and hopefully some formatting will be introduced to this gem some day. 

Wolfram Alpha has an API which will give you more than this gem does and there are API wrapper gems. Their API is limited to 2k requests/month for free dev accounts.

## Installation

Add this line to your application's Gemfile:

    gem 'wolfram', git: 'git@github.com:elbartostrikesagain/wolfram_alpha.git'

And then execute:

    $ bundle

Or install it yourself as:
    
    $ gem install elbartostrikesagain-wolfram_alpha -s http://gems.github.com

## Usage

    $ solution = WolframAlpha::Parser.new("price of gas in boulder")
    $ solution.pods.map(&:text)
    $ #["all grades of gasoline | average price per gallon | Boulder, Colorado", "$3.586/gal  (US dollars per gallon)  (Monday, July 29, 2013)"]
    $ solution.pods.map(&:title)
    $ #["Input interpretation:", "Result: (average estimate for Colorado):"]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
