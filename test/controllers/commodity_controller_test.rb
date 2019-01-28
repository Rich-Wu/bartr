require 'test_helper'

class CommodityControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get commodity_new_url
    assert_response :success
  end

  test "should get update" do
    get commodity_update_url
    assert_response :success
  end

end
