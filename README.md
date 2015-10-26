# zipfips

* [Homepage](https://rubygems.org/gems/zipfips)
* [Documentation](http://rubydoc.info/gems/zipfips/frames)
* [Email](mailto:brycedorn at gmail.com)

## Description

Convert between ZIP codes and FIPS codes.

## Examples

    require 'zipfips'

    ZF ||= ZipFips::Handler.new

    ZF.to_zip(12345) = 36093
    ZF.to_zip(36093) = 12345

## Install

    $ gem install zipfips

## Copyright

Copyright (c) 2015 Bryce Dorn

See LICENSE.txt for details.
