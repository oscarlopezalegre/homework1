require 'test_helper'

class SaveOrderControllerTest < ActionController::TestCase
  test "should get thank_you" do
    get :thank_you
    assert_response :success
  end

end
