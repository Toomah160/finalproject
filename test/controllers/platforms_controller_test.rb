require 'test_helper'

class PlatformsControllerTest < ActionController::TestCase
  setup do
    @platform = platforms(:one)
  end

  test "should create platform" do
    assert_difference('Platform.count') do
      post :create, platform: { name: @platform.name }
    end

    assert_redirected_to platform_path(assigns(:platform))
  end

  test "should show platform" do
    get :show, id: @platform
    assert_response :success
  end


  test "should destroy platform" do
    assert_difference('Platform.count', -1) do
      delete :destroy, id: @platform
    end

    assert_redirected_to platforms_path
  end
end
