require 'watir-webdriver'

Before do
  
  # For Phantom JS use
  # @browser = Watir::Browser.new :phantomjs('') #(location of the phantomjs)
  
  # For HTML Unit Driver use
  # Before using HTML Unit Driver. Start Selenium Server
  
  # You can use start_server.rb script in the support for starting the server
  
  # capabilities = WebDriver::Remote::Capabilities.htmlunit(:javascript_enabled => true)
  # @browser = Watir::Browser.new(:remote, :url => 'http://127.0.0.1:4444/wd/hub', :desired_capabilities => capabilities)
  
  @browser = Watir::Browser.new :firefox
  @browser.window.maximize
end


After do |scenario|
  
  # Note: For HTML Unit Driver comment out the screenshot script
  
  if scenario.failed?
    Dir::mkdir('screenshots') if not File.directory?('screenshots')
    screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
    @browser.screenshot.save(screenshot)
    embed screenshot, 'image/png'
  else
    Dir::mkdir('screenshots') if not File.directory?('screenshots')
    screenshot = "./screenshots/PASSED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
    @browser.screenshot.save(screenshot)
    embed screenshot, 'image/png'
  end
  @browser.close
  end
