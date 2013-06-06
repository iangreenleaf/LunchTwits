require 'test_helper'

class LunchControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get vote" do
    get :vote
    assert_response :success
  end

end
