require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
   @user = User.new(name: "Tartan", email: "tartan@cmu.edu")
  end

  test "should be valid" do
   assert @user.valid?
  end
end