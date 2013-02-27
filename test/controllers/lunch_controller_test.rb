require 'test_helper'

class LunchControllerTest < ActionController::TestCase
  test "should get vote" do
    get :vote
    assert_response :success
  end

end
