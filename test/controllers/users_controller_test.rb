require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get users_new_url
    assert_response :success
  end

  test "should get update" do
    get users_update_url
    assert_response :success
  end

  test "should get read" do
    get users_read_url
    assert_response :success
  end

  test "should get index" do
    get users_index_url
    assert_response :success
  end

end
