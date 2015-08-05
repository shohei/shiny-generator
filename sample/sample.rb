require 'rubygems'
$:.unshift File.expand_path("./lib"), File.dirname(__FILE__)

require 'shiny/generator'
include Shiny::Generator

s = Scraper.new

