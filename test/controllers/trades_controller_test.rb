require 'test_helper'

class TradesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get trades_new_url
    assert_response :success
  end

  test "should get update" do
    get trades_update_url
    assert_response :success
  end

  test "should get read" do
    get trades_read_url
    assert_response :success
  end

  test "should get index" do
    get trades_index_url
    assert_response :success
  end

end
