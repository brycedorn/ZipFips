# zipfips

#### Easily convert between ZIP codes and FIPS codes
* [RubyGems](https://rubygems.org/gems/zipfips)

## Description
  Couldn't find an easy way to convert between Zone Improvement Plan (ZIP) and Federal Information Processing Standard (FIPS) county codes, so made a gem for it. Uses census data from [census.gov](https://www.census.gov/) for associating [ZIP codes to counties](https://www.census.gov/geo/reference/codes/cou.html) and corresponding [counties to FIPS codes](https://www.census.gov/econ/cbp/download/). Also predicts FIPS code if ZIP code provided was not in this data.

## Usage
```ruby
require 'zipfips'

12345.to_fips #=> 36093
36093.to_zip  #=> 12345

36093.zipfips #=> 12345

```

## Install

    $ gem install zipfips

## Copyright

Copyright (c) 2015 Bryce Dorn

See LICENSE.txt for details.
