# ZipFips

* [Homepage](https://rubygems.org/gems/zipfips)
* [Documentation](http://rubydoc.info/gems/zipfips/frames)

## Description

Easily convert between ZIP codes and FIPS codes

## Usage

    require 'zipfips'

    ZF ||= ZipFips::Handler.new

    ZF.to_zip(12345)  #=> 36093
    ZF.to_zip(36093)  #=> 12345

## Install

    $ gem install zipfips

## Copyright

Copyright (c) 2015 Bryce Dorn

See LICENSE.txt for details.
