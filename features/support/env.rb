require 'capybara/cucumber'
require 'rspec'
require_relative '../lib/page_access'

RSpec.configure do |configure|
  configure.formatter = :documentation
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  config.ignore_hidden_elements = false
  config.default_max_wait_time = 10
  config.default_driver = :chrome
end
