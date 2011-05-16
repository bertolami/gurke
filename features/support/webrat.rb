require 'webrat'
require 'webrat/core/matchers'

Webrat.configure do |config|
  config.mode = :rack
  config.open_error_files = false
end

World(Webrat::Methods)
World(Webrat::Matchers)