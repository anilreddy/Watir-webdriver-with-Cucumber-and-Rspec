require 'watir-webdriver'



Before do
  @browser = Watir::Browser.new :firefox
  @browser.window.maximize
end


After do |scenario|
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