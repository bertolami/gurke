require 'webrat'
require 'webrat/core/matchers'

Webrat.configure do |config|
  config.mode = :rack
  config.open_error_files = false
end

World(Webrat::Methods)
World(Webrat::Matchers)

module Webrat
  class Session
    def current_host
      URI.parse(current_url).host || @custom_headers["Host"] || default_current_host
    end

    def default_current_host
      adapter.class==Webrat::RackAdapter ? "example.org" : "www.example.com"
    end
  end
end