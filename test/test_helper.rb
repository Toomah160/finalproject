ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
def setup
@user = User.new(name: "tartan", email: "tartan@cmu.edu", password: "foobar12",
password_confirmation: "foobar")
end

  
end
