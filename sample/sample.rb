require 'rubygems'
require 'nokogiri'
require 'open-uri'

$:.unshift File.expand_path("./lib"), File.dirname(__FILE__)

require 'shiny/generator'

s = Shiny::Generator::Template.new
s.create

`R -e "shiny::runApp('shiny')"`

