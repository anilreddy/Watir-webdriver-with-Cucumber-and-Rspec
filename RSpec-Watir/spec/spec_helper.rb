$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rspec'
require 'page-object'
require 'watir-webdriver'
require 'data_magic'
require 'require_all'

require_all 'lib'

RSpec.configure do |config|
  config.include PageObject::PageFactory

  config.before do
    @browser = Watir::Browser.new :chrome
    @browser.window.maximize
  end

  config.after do
    @browser.close
  end

end
