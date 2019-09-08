$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', '..', 'lib'))

require 'rspec-expectations'
require 'page-object'
require 'require_all'
require 'data_magic'
require 'fig_newton'

require_all 'lib'

PageObject.default_page_wait=(60)
PageObject.default_element_wait=(60)

World(PageObject::PageFactory)
