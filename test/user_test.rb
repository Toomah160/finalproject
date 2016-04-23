require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  
   def setup
    @user = User.new(name: "tartan", email: "tartan@cmu.edu", password: "foobar",
    password_confirmation: "foobar")
   end
   

  test "should be valid" do
   assert @user.valid?
  end
  
    test "email validation should accept valid addresses" do
   valid_addresses = %w[user@cmu.edu user@qatar.cmu.edu  user@example.conm]
   valid_addresses.each do |valid_address|
   @user.email = valid_address
   assert @user.valid?, "#{valid_address.inspect} should be valid"
   end
  end
  
   test "email addresses should be unique" do
     duplicate_user = @user.dup
     duplicate_user.email = @user.email.upcase
     @user.save
     assert_not duplicate_user.valid?
    end
  
   
   test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
   end
   
end