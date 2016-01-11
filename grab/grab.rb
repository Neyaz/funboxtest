#!/usr/bin/ruby
require_relative "grabber"

url = ARGV[0]
path = ARGV[1]

Grabber.new(url, path).runner

