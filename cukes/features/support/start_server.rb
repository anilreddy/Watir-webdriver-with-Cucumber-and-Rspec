###
#
#  Use this to start Selenium Server if you are using HTML Unit Driver 
#  URL => 'http://127.0.0.1:4444/wd/hub'
#
###

require 'selenium/server'
server = Selenium::Server.new("/path/to/jar", :background => true)
server.start
# run your tests
server.stop
