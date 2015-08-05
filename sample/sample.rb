require 'rubygems'
require 'opal'
require 'opal-jquery'

$:.unshift File.expand_path("./lib"), File.dirname(__FILE__)

require 'shiny/generator'
include Shiny::Generator

s = Scraper.new




HTTP.get("https://itunes.apple.com/search?term=jack+johnson") do |response|
  puts response.body
  # => "{\"name\": \"Adam Beynon\"}"
end

