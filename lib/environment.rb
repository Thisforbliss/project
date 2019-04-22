#require "project/version"
require_relative './project/version'
require_relative './project/cli'
require 'open-uri'
require 'pry'
require 'nokogiri'
require_relative './project/scraper'
require_relative './project/player'



module Project
  class Error < StandardError; end
  # Your code goes here...
end
