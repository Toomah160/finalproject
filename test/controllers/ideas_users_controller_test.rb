require 'test_helper'

class IdeasUsersControllerTest < ActionController::TestCase
  setup do
    @ideas_user = ideas_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ideas_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ideas_user" do
    assert_difference('IdeasUser.count') do
      post :create, ideas_user: { roles_id: @ideas_user.roles_id, user_id: @ideas_user.user_id }
    end

    assert_redirected_to ideas_user_path(assigns(:ideas_user))
  end

  test "should show ideas_user" do
    get :show, id: @ideas_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ideas_user
    assert_response :success
  end

  test "should update ideas_user" do
    patch :update, id: @ideas_user, ideas_user: { roles_id: @ideas_user.roles_id, user_id: @ideas_user.user_id }
    assert_redirected_to ideas_user_path(assigns(:ideas_user))
  end

  test "should destroy ideas_user" do
    assert_difference('IdeasUser.count', -1) do
      delete :destroy, id: @ideas_user
    end

    assert_redirected_to ideas_users_path
  end
end
