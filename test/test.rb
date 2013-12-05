#!/usr/bin/env ruby
here = File.dirname(__FILE__)
$:.unshift File.expand_path(File.join(here, '..', 'lib'))
$:.unshift File.expand_path(File.join(here))

Encoding::default_external = 'UTF-8'

require 'test/unit'
Test::Unit::AutoRunner.run(true, File.join(here, 'xezat'))
