require 'test_helper'

class CarsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get cars_url
    assert_response :success
    assert_equal "index", @controller.action_name
    assert_match "Cars", @response.body
  end

  test "should get new" do
    get new_car_url
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post cars_url, params: { car: { make: @car.make, model: @car.model, year: @car.year } }
    end
    assert_redirected_to car_url(Car.last)
  end

  test "should not create invalid car" do
    assert_no_difference('Car.count') do
      post cars_url, params: { car: { make: nil, model: nil, year: nil } }
    end
    assert_response :success
  end

  test "should show car" do
    get car_url(@car)
    assert_response :success
    assert_equal "show", @controller.action_name
    assert_match @car.make, @response.body
    assert_match @car.model, @response.body
    assert_match @car.year.to_s, @response.body
  end

  test "should get edit" do
    get edit_car_url(@car)
    assert_response :success
  end

  test "should update car" do
    patch car_url(@car), params: { car: { make: @car.make, model: @car.model, year: @car.year } }
    assert_redirected_to car_url(@car)
  end

  test "should not update car if invalid" do
    patch car_url(@car), params: { car: { make: nil, model: nil, year: nil } }
    assert_response :success
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete car_url(@car)
    end
    assert_redirected_to cars_url
  end
end
