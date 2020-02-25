# environment folder

# require is used to both execute gems from the gemfile and external dependencies
require 'open-uri'
require 'nokogiri'
require 'pry'

# require_relative is used to load relative paths
# use when you are referring to a file that is a relative to the current file you are working on
require_relative "./city_pop/version"
require_relative "./city_pop/scraper"
require_relative "./city_pop/city"
require_relative "./city_pop/cli"