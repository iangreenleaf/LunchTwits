require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  test "should get show" do
    restaurant = Restaurant.create! name: "Foobar Bakery"
    get :show, :id => restaurant.id
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get edit" do
    restaurant = Restaurant.create! name: "Foobar Bakery"
    get :edit, :id => restaurant.id
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create" do
    skip
  end

  test "should update" do
    skip
  end

end
