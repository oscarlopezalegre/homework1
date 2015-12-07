require 'test_helper'

class OrderControllerTest < ActionController::TestCase
  test "should get create_order" do
    get :create_order
    assert_response :success
  end

end
