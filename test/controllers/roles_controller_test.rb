require 'test_helper'

class RolesControllerTest < ActionController::TestCase
  setup do
    @role = roles(:one)
  end

 
  test "should show role" do
    get :show, id: @role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @role
    assert_response :success
  end


end
