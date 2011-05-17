require 'webrat'
require 'webrat/core/matchers'

module WebratLayer

  def create_new_family(family, energy)
    visit new_family_path
    fill_in "Name", :with => family
    fill_in "Energy", :with => energy
    click_button "Create Family"
  end

  def find_family(family_name)
      visit families_path
      response
  end
end


Webrat.configure do |config|
  config.mode = :rack
  config.open_error_files = false
end

World(WebratLayer)
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