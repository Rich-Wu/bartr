require 'test_helper'

class OffersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get offers_new_url
    assert_response :success
  end

  test "should get update" do
    get offers_update_url
    assert_response :success
  end

  test "should get read" do
    get offers_read_url
    assert_response :success
  end

end
