require 'watir-webdriver'
require 'page-object'
require 'rspec/expectations'
require 'yaml'
require 'pry'

World(PageObject::PageFactory)
World(RSpec::Matchers)

